class ProductsController < ApplicationController
  before_action :set_products, only: [:show]

  def index
    @products = Product.all
  end

  def show
  end

  def new
    @product = Product.new
  end
  private

  def set_products
    @product = Product.find_by(id: params[:id])
  end

  def create
    @product = Product.new(product_params)
    @product.user = current_user
    raise
    if @product.save
      puts ActiveRecord::Base.connection.to_sql # add this line to log SQL statement
      redirect_to products_path, notice: "Product was successfully created."
    else
      puts @product.errors.full_messages # add this line to log errors
      render :new
    end
  end

  private

  # Strong params: white list of sanitized input
  def product_params
    params.require(:product).permit(:name, :overview, :price, :unit)
  end
end
