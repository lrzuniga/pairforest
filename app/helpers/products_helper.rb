module ProductsHelper


  def formatted_price(price)
    sprintf("$%.2f", price)
  end

end
