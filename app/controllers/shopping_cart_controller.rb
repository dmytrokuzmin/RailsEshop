class ShoppingCartController < ApplicationController
  before_action :set_cart, only: [:index, :add_cart_item, :checkout_customer]
  before_action :set_customer, only: [:checkout_customer, :update_customer]
  before_action :authenticate_customer!, :except => [:index, :add_cart_item]
  layout 'eshop'

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
  end

  #PATCH
  def update_customer
    respond_to do |format|
      if @customer.update_attributes(customer_params)
        format.html { redirect_to :checkout_shipping, notice: 'You data have been updated.' }
      else
        format.html { render :checkout_customer }
      end
    end
  end

  #GET
  def checkout_shipping
    @shippings = ShippingOption.all
  end

  #GET
  def checkout_summary
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

  def set_customer
    @customer = current_customer
    if @customer.address == nil
      @customer.address = Address.create
    end

  end

  def customer_params
    params.require(:customer).permit( :first_name, :last_name, :address_attributes => [:id, :country, :city, :address_line1, :address_line2, :zip_postal_code, :phone_number])
  end
end
