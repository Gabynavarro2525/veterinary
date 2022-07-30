class ProductsController < ApplicationController
  before_action :set_product, only: [:show, :edit, :update, :destroy]

  def index
    @products = Product.all
  end

  def new
    @product = Product.new
  end

  def create
    @product = Product.create product_params
    redirect_to products_path(@product), notice: 'Product was successfully created.'
  end

  def show 
  end

  def edit
  end

  def update
    if @product.update product_params
      redirect_to products_path, notice: 'Product was successfully updated.'
    else
      render :edit, status: :unprocessable_entity
    end
  end

  def destroy
    @product.destroy
    redirect_to products_path, status: :ok, notice: 'Product deleted successfully'
  end

  private
  def product_params
    params.require(:product).permit(:area_id, :name, :description, :selling_price, :purchase_price)
  end
  def set_product
    @product = Product.find params[:id]
  end
end