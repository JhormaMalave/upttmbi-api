class Api::V1::SubjectsController < ApplicationController
  before_action :set_subject, only: %i[show update destroy]
  before_action :check_owner, only: %i[create update destroy]
  before_action :check_login

  def index
    @subjects = Subject.all
  end

  def show
  end

  def create
    @subject = Subject.new(subject_params)
    if @subject.save
      @subject
    else
      render json: { errors: @subject.errors }, status: :unprocessable_entity
    end
  end

  def update
    if @subject.update(subject_params)
      @subject
    else
      render json: @subject.errors, status: :unprocessable_entity
    end
  end

  def destroy
    @subject.destroy
    head 204
  end

  private
    def subject_params
      params.require(:subject).permit(:name, :curricular_units, :duration, :subject_type, :status, :course_id)
    end

    def set_subject
      @subject = Subject.find(params[:id])
    end
    
    def check_owner
      head :forbidden unless current_user&.role_id == 1
    end
end
