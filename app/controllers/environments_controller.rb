class EnvironmentsController < ApplicationController
  def index
    @projects = Project.all
    @environments = Environment.all
    @environment = Environment.new
  end

  def create
    parameters = environment_params
    sameRecord = Environment.where(project_id: parameters[:project], skill_id: parameters[:skill]).count
    if sameRecord == 0
      @environment = Environment.new(environment_params)
      @environment.save
    end
    redirect_to environments_path
  end

  def destroy
    @environment = Environment.find(params[:id])
    @environment.destroy
    redirect_to environments_path
  end

  private

  def environment_params
    params.require(:environment).permit(:project_id, :skill_id)
  end

end
