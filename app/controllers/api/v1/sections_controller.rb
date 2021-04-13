class Api::V1::SectionsController < ApplicationController
  before_action :set_section, only: %i[show update destroy]
  before_action :check_owner, only: %i[create update destroy]
  before_action :check_login

  def index
    @sections = Section.all
  end

  def show
  end

  def create
    @section = Section.new(section_params)
    if @section.save
      @section
    else
      render json: { errors: @section.errors }, status: :unprocessable_entity
    end
  end

  def update
    if @section.update(section_params)
      @section
    else
      render json: @section.errors, status: :unprocessable_entity
    end
  end

  def destroy
    @section.destroy
    head 204
  end

  private
    def section_params
      params.require(:section).permit(:name, :trimester, :shift, :course_id, :period_id)
    end

    def set_section
      @section = Section.find(params[:id])
    end
    
    def check_owner
      head :forbidden unless current_user&.role_id == 1
    end
end
