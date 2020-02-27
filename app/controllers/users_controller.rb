class UsersController < ApplicationController

  def index
    @user = User.all
  end

  def show
    @gear = Gear.find(params[:id])
  end


end
