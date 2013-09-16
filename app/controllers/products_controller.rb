class ProductsController < ApplicationController

before_action :load_product, :except => [:index, :new, :create]

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
  #product already loaded  
end

def edit
end

def update
  if @product.update_attributes(products_params)
   redirect_to product_path 
  else
    render :edit
  end
end

private

def load_product
  @product = Product.find(params[:id])   
end









  def products_params
    params.require(:product).permit(:name, :description, :price_in_cents)
  end
end
