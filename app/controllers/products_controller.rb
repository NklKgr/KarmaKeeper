class ProductsController < ApplicationController
  before_action :set_products, only: [:show]

  def index
    @products = Product.all
    @product = Product.new
  end

  def show
    @product = Product.find(params[:id])
    @booking = Booking.new
  end

  def new
    @product = Product.new
  end

  def create
    @product = Product.new(product_params)
    @product.user = current_user
    if @product.save
      redirect_to products_path, notice: "Product was successfully created."
    else
      puts @product.errors.full_messages
      render :new
    end
  end

  def search
    if params[:search].blank?
      redirect_to products_path and return
    else
      @parameter = params[:search].downcase
      @results = Products.all.where("lower(name) LIKE :search", search: "%#{@parameter}%")
    end
  end

  private

  def set_products
    @product = Product.find(params[:id])
  end

  def product_params
    params.require(:product).permit(:name, :overview, :price, :unit)
  end
end
