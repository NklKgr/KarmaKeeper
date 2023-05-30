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

  def create<div class="product-form">
    <%= simple_form_for @product, url: products_path, method: :post do |f| %>
      <div class="form-group">
        <%= f.label :name %>
        <%= f.text_field :name, class: 'form-control' %>
      </div>
      <div class="form-group">
        <%= f.label :overview %>
        <%= f.text_area :overview, class: 'form-co<div class="product-form">
        <%= simple_form_for @product, url: products_path, method: :post do |f| %>
          <div class="form-group">
            <%= f.label :name %>
            <%= f.text_field :name, class: 'form-control' %>
          </div>
          <div class="form-group">
            <%= f.label :overview %>
            <%= f.text_area :overview, class: 'form-control' %>
          </div>
          <div class="form-group">
            <%= f.label :price %>
            <%= f.text_field :price, class: 'form-control' %>
          </div>
          <div class="form-group">
            <%= f.label :unit %>
            <%= f.text_field :unit, class: 'form-control' %>
          </div>
          <%= f.submit "Create Product", class: "btn btn-primary" %>
        <% end %>
      </div>ntrol' %>
      </div>
      <div class="form-group">
        <%= f.label :price %>
        <%= f.text_field :price, class: 'form-control' %>
      </div>
      <div class="form-group">
        <%= f.label :unit %>
        <%= f.text_field :unit, class: 'form-control' %>
      </div>
      <%= f.submit "Create Product", class: "btn btn-primary" %>
    <% end %>
  </div>
    @product = Product.new(product_params)
    @product.user = current_user
    if @product.save
      redirect_to products_path, notice: "Product was successfully created."
    else
      puts @product.errors.full_messages # add this line to log errors
      render :new
    end
  end

  private

  # Strong params: white list of sanitized input
  def set_products
    @product = Product.find(params[:id])
  end

  def product_params
    params.require(:product).permit(:name, :overview, :price, :unit)
  end
end
