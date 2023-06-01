class ProductsController < ApplicationController
  before_action :set_products, only: [:show]

  def index
    @products = Product.all
    @product = Product.new

    query = params[:query]
    if query.present?
      sql_query = "name ILIKE :query OR overview ILIKE :query"
      @products = @products.where(sql_query, query: "%#{params[:query]}%")
    end

    # if params[:year].present?
    #   @products = @products.where(year: params[:year])
    # end
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

  private

  def set_products
    @product = Product.find(params[:id])
  end

  def product_params
    params.require(:product).permit(:name, :overview, :price, :unit, :photo)
  end
end
