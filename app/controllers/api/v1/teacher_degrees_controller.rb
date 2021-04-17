class Api::V1::TeacherDegreesController < ApplicationController
  before_action :set_teacher_degree, only: %i[show update destroy]
  before_action :check_login

  def index
    @teacher_degrees = TeacherDegree.all
  end

  def show
  end

  def create
    @teacher_degree = TeacherDegree.new(teacher_degree_params)
    if @teacher_degree.save
      @teacher_degree
    else
      render json: { errors: @teacher_degree.errors }, status: :unprocessable_entity
    end
  end

  def update
    if @teacher_degree.update(teacher_degree_params)
      @teacher_degree
    else
      render json: @teacher_degree.errors, status: :unprocessable_entity
    end
  end

  def destroy
    @teacher_degree.destroy
    head 204
  end

  private
    def teacher_degree_params
      params.require(:teacher_degree).permit(:name, :degree_type, :status, :teacher_id)
    end

    def set_teacher_degree
      @teacher_degree = TeacherDegree.find(params[:id])
    end
end
