class MedAppsController < ApplicationController
  before_action :require_login
  include CurrentUserConcern

  def index
    med_apps = @current_user.med_apps
    if med_apps 
      render json: {med_apps: med_apps, success: "All applications pulled successfully."}
    else 
      render json: {failure: med_apps.errors.full_messages}
    end
  end

  def show 
    med_app = MedApp.find(med_app_params[:id])
  end

  def create
    if @current_user.med_apps.create(med_app_params)
      med_app = @current_user.med_apps.last 
      render json: {med_app: med_app, success: "Application successfully added for user."}
    else 
      render json: {failure: med_app.errors.full_messages}
    end
  end

  def update 
    med_app = MedApp.find(med_app_params[:id])
    med_app.update(med_app_params)
  end

  def destroy 
    med_app = MedApp.find(med_app_params[:id])
    if med_app.destroy 
      render json: {success: "Successfully deleted application for user."}
    else
      render json: {failure: "Unable to delete application for user."}
    end
  end

  private

  def med_app_params
    params.require(:med_apps).permit(:school_id, :primary_app, :secondary_app, :personal_statement, :primary_essays, :secondary_essays, :status, :details)
  end

end