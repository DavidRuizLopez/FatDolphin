class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: :home
  def home
  end

  def dashboard
    @user = current_user
    @gear = @user.gears.select { |gear| gear.available == true}
  end
end
