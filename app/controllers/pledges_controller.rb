class PledgesController < ApplicationController
  
  def index
    @projects = Pledge.all
  end

  def show
    @pledge = Pledge.find(params[:id])
  end

  def new
    @pledge = Pledge.new
  end

  def create
    @pledge = Pledge.new(pledge_params)

    if @pledge.save
      redirect_to pledge_url
    else
      render :new
    end
  end

  def edit
    @pledge = Pledge.find(params[:id])
  end

  def update
    @pledge = Pledge.find(params[:id])

    if @pledge.update_attributes(pledge_params)
      redirect_to pledge_url
    else
      render :edit
    end
  end

  def destroy
    @pledge = Pledge.find(params[:id])
    @pledge.destroy
    redirect_to pledges_url
  end


  private
  def pledge_params
    params.require(:pledge).permit(:amount, :user_id, :project_id)
  end
  
end
