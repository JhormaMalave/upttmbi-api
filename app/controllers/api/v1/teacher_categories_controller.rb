class Api::V1::TeacherCategoriesController < ApplicationController
  before_action :check_login

  def index
    @teacher_categories = TeacherCategory.all
  end
end
