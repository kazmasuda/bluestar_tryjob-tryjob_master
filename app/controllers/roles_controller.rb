class RolesController < ApplicationController
  def index
    @roles = Role.all
    @role = Role.new
  end

  def create
    @role = Role.new(role_params)
    @role.save
    redirect_to roles_path
  end

  def destroy
    @role = Role.find(params[:id])
    @role.destroy
    redirect_to roles_path
  end

private

  def role_params
    params[:role].permit(:name)
  end
end
