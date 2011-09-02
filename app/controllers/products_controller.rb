class ProductsController < ApplicationController

  def index
    @products = Product.all
  end

  def search
    @products = Product.find_all_by_name(params[:name])
  end

  def show
    @product = Product.find(params[:id])
  end

  def new
    @product = Product.new
  end

  def create
    @product = Product.new(params[:product])

    if @product.save
      flash[:notice] = "Product has been successfully created."
      redirect_to @product
    else
      render :action => "new"
    end
  end

  def destroy
    @product = Product.find(params[:id])
    @product.destroy
    flash[:notice] = "Product was successfully deleted."
    redirect_to products_path
  end

end
