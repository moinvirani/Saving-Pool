class ProjectsController < ApplicationController
    skip_before_filter :require_login, only: [:index, :show]
  
  def index
    @projects = Project.all
  end

  def show
    @project = Project.find(params[:id])
  end

  def new
    @project = Project.new
  end

  def create
    @project = Project.new(project_params)

    if @project.save
      redirect_to projects_url
    else
      render :new
    end
  end

   def edit
    @project = Project.find(params[:id])
  end

  def update
    @project = Project.find(params[:id])

    if @project.update_attributes(project_params)
      redirect_to projects_url 
    else
      render :edit
    end
  end

  def destroy
    @project = Project.find(params[:id])
    @project.destroy
    redirect_to projects_url  
  end

  private
  def project_params
    params.require(:project).permit(:title, :description, :goal, :start_date, :end_date, :creater_id, :category_id, :image)
    
  end
end
