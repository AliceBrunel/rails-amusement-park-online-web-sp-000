class RidesController < ApplicationController
  def create
    ride = Ride.create(ride_params)
    message = ride.take_ride
<<<<<<< HEAD
    flash[:message] = message
    redirect_to user_path(ride.user)
=======
    redirect_to user_path(ride.user), flash: { message:message }
>>>>>>> 278cb8f3609281d501f1fb94a294f3924cb000e3
  end

  private
  def ride_params
    params.require(:ride).permit(
      :user_id,
      :attraction_id
      )
  end
end
