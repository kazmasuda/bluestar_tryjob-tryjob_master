class TypesController < ApplicationController
  def index
    @types = Type.all
    @type = Type.new
  end

  def create
    @type = Type.new(type_params)
    @type.save
    redirect_to types_path
  end

  def destroy
    @type = Type.find(params[:id])
    @type.destroy
    redirect_to types_path
  end

private

  def type_params
    params[:type].permit(:name)
  end

end
