class CoursesController < ApplicationController
  before_action :require_login
  include CurrentUserConcern

  def index
    courses = @current_user.courses
    if courses 
      render json: {courses: courses, success: "All courses pulled successfully."}
    else 
      render json: {failure: courses.errors.full_messages}
    end
  end

  def show 
    course = Course.find(course_params[:id])
  end

  def create
    if @current_user.courses.create(course_params)
      course = @current_user.courses.last 
      render json: {course: course, success: "Course successfully added for user."}
    else 
      render json: {failure: course.errors.full_messages}
    end
  end

  def update 
    course = Course.find(course_params[:id])
    course.update(course_params)
  end

  def destroy 
    course = Course.find(course_params[:id])
    if course.destroy 
      render json: {success: "Successfully deleted course for user."}
    else
      render json: {failure: "Unable to delete course for user."}
    end
  end

  private

  def courses_params
    params.require(:courses).permit(:course_number, :course_name, :professor, :start_time, :end_time, :grade, :semester, :year, :description, :days => [])
  end

end