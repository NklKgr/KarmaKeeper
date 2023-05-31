class BookingsController < ApplicationController
  def new
    @booking = Booking.new
  end

  def create
    @booking = Booking.new(booking_params)
    @booking.user = current_user
    @booking.product = Product.find(params[:product_id])
    if @booking.save!
      redirect_to products_path
    else
      render 'new'
    end
  end

  private

  def booking_params
    params.require(:booking).permit(:amount, :people_quantity, :product_id, :user_id)
  end
end
