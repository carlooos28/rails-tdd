class ControlsController < ApplicationController

  def index
    @controls = Control.all
  end

  def show
    @control = Control.find(params[:id])
  end
 
  def new
    @control = Control.new
  end

  def edit
    @control = Control.find(params[:id])
  end

  def create
    @control = Control.new(control_params)
  
    if @control.save
      redirect_to @control
    else
      render 'new'
    end
  end

  def update
    @control = Control.find(params[:id])
  
    if @control.update(control_params)
      redirect_to @control
    else
      render 'edit'
    end
  end

  def destroy
    @control = Control.find(params[:id])
    @control.destroy
 
    redirect_to controls_path
  end

private
  def control_params
    params.require(:control).permit(:name, :description)
  end

end
