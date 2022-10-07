class ProductsController < ApplicationController
  require "csv"
  before_action :set_product, only: [:show, :edit, :update, :destroy]

  def import
    file = params[:file]
    return redirect_to request.referer, notice: "Only CSV files allowed" unless params[:file].content_type == "text/csv"
    file = File.open(file)
    CsvImportProductsService.new.call(file)
    redirect_to products_path, notice: "New product added successfully..."
  end

  def index
    @products = Product.all
    respond_to do |format|
      format.html
      format.csv { send_data @products.to_csv }
      format.pdf { render template: "products/products", pdf: "products" }
    end
  end

  def new
    @product = Product.new
  end

  def create
    @product = Product.create! product_params
    redirect_to products_path(@product), notice: "Product was successfully created."
  end

  def show
  end

  def edit
  end

  def update
    if @product.update! product_params
      redirect_to products_path, notice: "Product was successfully updated."
    else
      render :edit, status: :unprocessable_entity
    end
  end

  def destroy
    @product.destroy!
    redirect_to products_path, status: :ok, notice: "Product deleted successfully"
  end

  private

  def product_params
    params.require(:product).permit(:area_id, :name, :classification, :selling_price, :purchase_price)
  end

  def set_product
    @product = Product.find params[:id]
  end
end
