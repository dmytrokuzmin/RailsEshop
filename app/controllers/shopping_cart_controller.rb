class ShoppingCartController < ApplicationController
  before_action :set_cart, only: [:index, :add_cart_item, :checkout_customer]
  before_action :authenticate_customer!, :except => [:index, :add_cart_item]

  #GET
  def index
  end

  #POST
  def add_cart_item
    @cart.add_item(params[:product_id])
    redirect_to :back, notice: 'Item was successfully added to cart.'
  end

  #GET
  def checkout_customer
    @customer = current_customer
  end

  private
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
