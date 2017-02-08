class ProductsController < ApplicationController
  before_action :set_product, only: [:show]
  before_action :set_cart
  layout 'eshop'

  def index
    if params[:category] == nil
      @products = Product.all
      @heading = 'All products'
    else
      @products = Product.where(category_id: params[:category])
      @heading = Category.find(params[:category]).name
    end
  end

  def show
  end

  private
  # Use callbacks to share common setup or constraints between actions.
  def set_product
    @product = Product.find(params[:id])
  end

  # Use callbacks to share common setup or constraints between actions.
  def set_cart
    cart_id = session[:cart_id]
    if cart_id != nil
      @cart = ShoppingCart.find(cart_id) rescue nil
    end

    if @cart == nil
      @cart = ShoppingCart.new
      if @cart.save
        session[:cart_id] = @cart.id
      end
    end
  end
end
