class ProductsController < ApplicationController
  before_action :set_products, only: [:show]

  def index
    @products = Product.all
  end

  def show;  end

  private

  def set_products
    @product = Product.find_by(id: params[:id])
  end

  # Strong params: white list of sanitized input
  def product_params
    params.require(:product).permit(:name, :overview, :price, :unit)
  end
end
