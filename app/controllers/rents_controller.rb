class RentsController < ApplicationController
  def create
    @gear = Gear.find(params[:gear_id])
    @rent = Rent.new(params.require(:rent).permit(:check_in, :check_out))
    @rent.user = current_user
    @rent.gear = @gear
    @rent.total_price = maths(params[:rent][:check_in], @gear)
    @gear.update(available: false)
    if @rent.save
      redirect_to root_path
    else
      render "gears/show"
    end
  end

  def destroy
    @rent = Rent.find(params[:id])
    @rent.destroy
    redirect_to root_path
  end

  private

  def maths(date, gear)
    if date != ""
      checks = date.split(" to ")
      check_in = Date.parse(checks[0])
      check_out = Date.parse(checks[1])
      days = check_out - check_in
      return days * gear.price
    else
      return 0
    end
  end
end
