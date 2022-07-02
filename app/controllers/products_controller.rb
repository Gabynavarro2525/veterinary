class ProductsController < ApplicationController
  def index
    @products = Product.all
   # render  json: @products
  end
  def new
    @products = Product.new
  end
  def create
     @products = Product.create product_params
     redirect_to products_path, notice: 'Product was successfully created.'
  end
  def show 
    @products = Product.find(params[:name])
  end
  def edit
  end

  private
  def product_params
    params.require(:product).permit(:name, :description, :selling_price, :purchase_price)
  end
  end

