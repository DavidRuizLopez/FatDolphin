class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: :home
  def home
  end

  def dashboard
    @user = current_user
    @gears = @user.gears.select { |gear| gear.rents.count >= 1 }
    @rents = @user.rents
    #@requests = @user.rents.select{ |rent| rent.request == true }
  end

  def confirmation
  end
end
