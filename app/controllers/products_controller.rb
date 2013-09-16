class ProductsController < ApplicationController
  def index
  end














  def products_params
    params.require(:product).permit(:name, :description, :price_in_cents)
  end
end
