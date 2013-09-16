class ProductsController < ApplicationController
  def index
    @products = Product.all
  end

def new
  @product = Product.new
end

def create
  @product = Product.new(products_params)
  @product.save
  redirect_to @product
end

def show
  @product = Product.find(params[:id])  
end

def edit
  @product = Product.find(params[:id])
end













  def products_params
    params.require(:product).permit(:name, :description, :price_in_cents)
  end
end
