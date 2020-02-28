class GearsController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index, :show]
  before_action :set_gear, only: [:show, :edit]

  # def index
  #   if params[:search] && params[:search][:query] != ""
  #     @gears = Gear.all.select { |gear| gear.name.downcase == params[:search][:query].downcase }
  #   else
  #     @gears = Gear.all
  #   end
  # end

  def index
    if params[:button] && params[:query] != "" && Gear.all.categories.include?(params[:query])
      @gears = Gear.all.select { |gear| gear.category.downcase.include?(params[:query].downcase) }
    elsif params[:button] && params[:query] != ""
      @gears = Gear.all.select { |gear| gear.name.downcase.include?(params[:query].downcase) }
    else
      @gears = Gear.all
    end
  end

  def show
    gears = Gear.geocoded
    set_gear
    geocoded_gear = gears.where(id: params[:id])
    @markers = geocoded_gear.map do |gear|
      {
        lat: gear.latitude,
        lng: gear.longitude,
        infoWindow: render_to_string(partial: "info_window", locals: { gear: gear })
      }
    end
    @rent = Rent.new
  end

  def new
    @gear = Gear.new
  end

  def create
    @gear = Gear.new(gear_params)
    @gear.user = current_user
    if @gear.save
      redirect_to gear_path(@gear)
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
    params.require(:gear).permit(:name, :price, :description, :category, :photo)
  end

  def set_gear
    @gear = Gear.find(params[:id])
  end

  # def after_sign_in_path_for(resource_or_scope)
  #   stored_location_for(resource_or_scope) || super
  # end

end

