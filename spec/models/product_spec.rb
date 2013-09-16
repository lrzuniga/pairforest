require 'spec_helper'

  describe Product do

   context "with a valid product" do

    let!(:product) {Product.create(:name => "Laptop", :description => "Crucial to developers", price_in_cents: 120099)}
    it "should have a valid factory" do
      product.should be_valid

    end

    it "should have a price in cents" do
      product.price_in_cents = 14.5
      product.should be_valid
    end

  end
end

