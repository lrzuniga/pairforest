class UsersController < ApplicationController
  
  def index
    @user = User.all
  end

  def new
    @user = User.new
  end

  def show

    
  end

  def  edit
  end

  def update
  end

  # def create
  #   @product = Product.new(products_params)
  #   @product.save
  #   redirect_to @product
  # end

  def create
    @user = User.new(users_params)
    @user.save
    redirect_to products_path
  end

  def destroy
  end

  def users_params
    params.require(:user).permit(:name, :email, :password, :password_confirmation)
  end 


end


  