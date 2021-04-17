class Api::V1::TeachersController < ApplicationController
  before_action :set_teacher, only: %i[show update destroy]
  before_action :check_owner, only: %i[create update destroy]
  before_action :check_login

  def index
    @teachers = Teacher.all
  end

  def show
  end

  def create
    @teacher = Teacher.new(teacher_params)
    if @teacher.save
      @teacher
    else
      render json: { errors: @teacher.errors }, status: :unprocessable_entity
    end
  end

  def update
    if @teacher.update(teacher_params)
      @teacher
    else
      render json: @teacher.errors, status: :unprocessable_entity
    end
  end

  def destroy
    @teacher.destroy
    head 204
  end

  private
    def teacher_params
      params.require(:teacher).permit(:id_type, :id_number, :name, :surname, :birth_date, :cellphone_number, :email, :observation, :hire_date, :ordinary_date, :status, :teacher_category_id)
    end

    def set_teacher
      @teacher = Teacher.find(params[:id])
    end
    
    def check_owner
      head :forbidden unless current_user&.role_id == 1
    end
end
