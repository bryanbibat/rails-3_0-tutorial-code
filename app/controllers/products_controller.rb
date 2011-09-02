class ProductsController < ApplicationController

  def index
    @products = Product.all
  end

  def search
    @products = Product.all
  end

  def show
    @product = Product.find(params[:id])
  end

  def destroy
    @product = Product.find(params[:id])
    @product.destroy
    flash[:notice] = "Product was successfully deleted."
    redirect_to products_path
  end

end
