class ProjectsController < ApplicationController

  before_action :authenticate_user!

  def index
    @projects = Project.all
    @project = Project.new
  end

  def show
    @project = Project.find_by_id(params[:project][:id])
    unless @project then
      redirect_to projects_path
    end
  end

  def new
    @project = Project.new
  end

  def create
    @project = Project.new(project_params)
    if @project.save
      redirect_to projects_path
    else
      render 'new'
    end
  end

  def edit
    @project = Project.find(params[:id])
  end

  def update
    @project = Project.find(params[:id])
    if @project.update(project_params)
      redirect_to projects_path
    else
      render 'edit'
    end
  end

  def destroy
    @project = Project.find(params[:id])
    @project.destroy
    redirect_to projects_path
  end

  private

  def project_params
    params[:project].permit(:title, :detail, :role, :fee, :place, :type, :skill, :period, :payday, :interview, :business)
  end

  def project_params_id
    params[:project].permit(:id)
  end

end
