class PlanetsController < ApplicationController
  def index
    @planets = Planet.all
  end

  def show
    @planet = Planet.find(params[:id])
  end

  def edit
    @planet = Planet.find(params[:id])
  end

  def new
    render 'new'
  end

  def create
    @planet = Planet.new(planet_params)
    if @planet.save
      redirect_to planets_path
    else
      render 'new'
    end
  end

  def update
    @planet = Planet.find(params[:id])
    if @planet.update(planet_params)
      redirect_to planets_path
    else
      render 'edit'
    end
  end

  def destroy
   @planet = Planet.find(params[:id])
   if @planet.destroy
     flash[:success] = "Planet deleted"
     redirect_to planets_path
   else
     flash[:error] = "Delete failed!"
     redirect_to planets_path
   end
  end


  def planet_params
    params.permit(:name, :surface, :color)
  end
end
