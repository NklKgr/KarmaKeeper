class BookingsController < ApplicationController
  def new
    @booking = Booking.new
  end

  def create
    @booking = Booking.new(booking_params)
    if @booking.save
      redirect_to @booking
    else
      render 'new'
    end
  end

  private

  def booking_params
    params.require(:booking).permit(:duration, :people_quantity, :product_id, :user_id)
  end
end


# to be pasted in the view#index
# <div data-controller="toggle" class="mt-5">
#   <button class="btn btn-outline-primary">Add a new monument</button>
#   <%= render "form", monument: @monument %>
# </div>
