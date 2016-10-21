class UsersController < ApplicationController

  before_action :authenticate_user!, only: :show

  def index

  end

  def new
     redirect_to projects_path
  end

  def show
    @projects = Project.all
    render 'projects/index'
  end
end
