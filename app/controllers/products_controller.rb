class ProductsController < ApplicationController
  def index
    @products = Product.all
  end

def new
  @product = Product.new
end

def create
end













  def products_params
    params.require(:product).permit(:name, :description, :price_in_cents)
  end
end
