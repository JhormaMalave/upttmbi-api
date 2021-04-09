class Api::V1::PeriodsController < ApplicationController
  before_action :set_period, only: %i[show update destroy]
  before_action :check_owner, only: %i[create update destroy]
  before_action :check_login

  def index
    @periods = Period.all
  end

  def show
  end

  def create
    @period = Period.new(period_params)
    if @period.save
      @period
    else
      render json: { errors: @period.errors }, status: :unprocessable_entity
    end
  end

  def update
    if @period.update(period_params)
      @period
    else
      render json: @period.errors, status: :unprocessable_entity
    end
  end

  def destroy
    @period.destroy
    head 204
  end

  private
    def period_params
      params.require(:period).permit(:name, :initial_date, :final_date, :status)
    end

    def set_period
      @period = Period.find(params[:id])
    end
    
    def check_owner
      head :forbidden unless current_user&.role_id == 1
    end
end
