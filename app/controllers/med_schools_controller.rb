class MedSchoolsController < ApplicationController
  before_action :require_login
  include CurrentUserConcern

  def index
    med_schools = @current_user.med_schools
    if med_schools 
      render json: {med_schools: med_schools, success: "All medical schools pulled successfully."}
    else 
      render json: {failure: med_schools.errors.full_messages}
    end
  end

  def show 
    med_school = MedSchool.find(med_school_params[:id])
  end

  # def create
  #   if @current_user.med_schools.create(med_school_params)
  #     med_school = @current_user.med_schools.last 
  #     render json: {med_school: med_school, success: "Medical school successfully added."}
  #   else 
  #     render json: {failure: med_school.errors.full_messages}
  #   end
  # end

  # def update 
  #   med_school = MedSchool.find(med_school_params[:id])
  #   med_school.update(med_school_params)
  # end

  # def destroy 
  #   med_school = MedSchool.find(med_school_params[:id])
  #   if med_school.destroy 
  #     render json: {success: "Successfully deleted medical school."}
  #   else
  #     render json: {failure: "Unable to delete medical school."}
  #   end
  # end

  private

  def med_school_params
    params.require(:med_schools).permit(:name, :location, :degree_type, :students, :website, :mission_statement, :school_type, :tuition, :cost_of_attendance)
  end

end