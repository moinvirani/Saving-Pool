class ProjectsController < ApplicationController
  
  def index
    @projects = Project.all
  end

  def show
    @project = Project.find(params[:id])
  end

  def new
    @project = Project.new
  end

  def edit
    @project = Project.find(params[:id])
  end

  def create
    @project = Project.new(project_params)


  end


  private
  def project_params
    params.require(:project).permit(:title, :description, :goal, :start_date, :end_date, :user_id, :category_id)
    
  end
end
