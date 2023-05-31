class ProductsController < ApplicationController
  before_action :set_products, only: [:show]

  def index
    @products = Product.all
  end

  def show
    @product = Product.find(params[:id])
    @booking = Booking.new
  end

  private

  def set_products
    @product = Product.find(params[:id])
  end

  def product_params
    params.require(:product).permit(:name, :overview, :price, :unit)
  end
end
