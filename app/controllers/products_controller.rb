class ProductsController < ApplicationController
  def index
    @products = Product.all
  end

  def show
    @product = Product.find(params[:id])
  end

  def new
    @product = Product.new
  end

  def create
    @product = Product.new(product_params)
    if @product.save
      puts ActiveRecord::Base.connection.to_sql # add this line to log SQL statement
      redirect_to @product, notice: "Product was successfully created."
    else
      puts @product.errors.full_messages # add this line to log errors
      render :new
    end
  end

  private

  def product_params
    params.require(:product).permit(:name, :overview, :price, :unit)
  end
end
