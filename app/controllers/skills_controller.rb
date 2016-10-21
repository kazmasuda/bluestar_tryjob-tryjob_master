class SkillsController < ApplicationController
  def index
    @skills = Skill.all
    @skill = Skill.new
  end

  def create
    @skill = Skill.new(skill_params)
    @skill.save
    redirect_to skills_path
  end

  def destroy
    @skill = Skill.find(params[:id])
    @skill.destroy
    redirect_to skills_path
  end

private

  def skill_params
    params[:skill].permit(:name)
  end
end
