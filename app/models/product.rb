class Product < ActiveRecord::Base



  # attr_accessible :name, :description, :price_in_cents
  validates :name, :description, :price_in_cents, :presence => true
  validates :price_in_cents, :numericality => {:only_integer => true}


  def price
    self.price_in_cents / 100.0
  end

end
