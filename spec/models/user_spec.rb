require 'spec_helper'

describe User do
  let!(:user){FactoryGirl.create(:user)}
  
  context "Valid Factory" do
    it "should create a valid user " do
      user.should be_valid
    end
  end

  context "Invalid User Entry" do
    it "should be invalid with no name" do
      user.name = nil
      user.should_not be_valid
    end

    it "should be invalid with no email" do
      user.email = nil
      user.should_not be_valid
    end
  end

end

