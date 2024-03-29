class ProductsController < ApplicationController
  require "csv"
  before_action :set_product, only: [:show, :edit, :update, :destroy]
=begin
  def import
    file = params[:file]
    return redirect_to request.referer, notice: "Only CSV files allowed" unless params[:file].content_type == "text/csv"
    file = File.open(file)
    CsvImportProductsService.new.call(file)
    redirect_to products_path, notice: "New product added successfully..."
  end
=end
  def index
    @products = Product.all
   # respond_to do |format|
   #  format.html
   # format.csv { send_data @products.to_csv }
   #   format.pdf { render template: "products/products", pdf: "products" }
   #end
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
=begin
   def send_mail
    UserMailer.send_mail_files.deliver_now!
    @products = Product.all
    respond_to do |format|
      format.html
      format.pdf { render template: "products/products", pdf: "products" }
    end
    redirect_to products_path
  end
=end
  private

  def product_params
    params.require(:product).permit(:area_id, :name, :classification, :selling_price, :purchase_price)
  end

  def set_product
    @product = Product.find params[:id]
    if stale?(last_modified: @product.updated_at, public: true)
    render json: @product
  end
  end
end
