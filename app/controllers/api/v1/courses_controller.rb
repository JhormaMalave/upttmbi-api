class Api::V1::CoursesController < ApplicationController
  before_action :check_login

  def index
    @courses = Course.all
  end
end
