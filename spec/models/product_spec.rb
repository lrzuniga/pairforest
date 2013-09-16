require 'spec_helper'

  describe Product do
   let!(:product) {Product.create(:name => "Laptop")}
    it "should have a valid factory" do
      product.should be_valid
  end

end