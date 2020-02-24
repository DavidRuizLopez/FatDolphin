class GearsController < ApplicationController

  before_action :set_gear, only: [:show, :edit]


  # For when the searh bar is implemented
  # def index
  #   if params[:search] && params[:search][:query] != ""
  #     @gears = Gear.all.select { |gear| gear.name.downcase == params[:search][:query].downcase }
  #   else
  #     @gears = Gear.all
  #   end
  # end

  def show
    @gears = Gear.find(params[:id])
  end

  def new
    @gear = Gear.new
  end

  def create
    @gear = Gear.new(gear_params)
    if @gear.save
      redirect_to new_gear_dose_path(@gear)
    else
      render :new
    end
  end

  def edit
  end


  def destroy
    set_gear
    @gear.destroy
    redirect_to gears_path
  end


  private

  def gear_params
    params.require(:gear).permit(:name, :price, :description, :type)
  end

  def set_gear
    @gear = Gear.find(params[:id])
  end

end

