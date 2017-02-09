class ShoppingCartController < ApplicationController
  before_action :set_cart, only: [:index, :add_cart_item, :checkout_customer, :checkout_summary]
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
    set_customer
  end

  #PATCH
  def update_customer
    set_customer
    respond_to do |format|
      if @customer.update_attributes(customer_params)
        format.html { redirect_to :checkout_summary, notice: 'You data have been updated.' }
      else
        format.html { render :checkout_customer }
      end
    end
  end

  #POST
  def select_shipping_option
    @cart.select_shipping_option(params[:shipping_option_id])
  end

  #GET
  def checkout_summary
    @customer = current_customer
  end

  #POST
  def create_order
    set_customer
    set_cart
    @order = Order.new(shipping_address: @customer.address,
                       customer: @customer,
                       :status => :pending,
                       total_items_price: @cart.calculate_total)
    respond_to do |format|
      if @order.save
        format.html { redirect_to root_path, notice: 'Order was successfully created.' }
        @cart.shopping_cart_items.each do |item|
          @order.order_items.create(:product_id => item.product_id,
                                    :quantity => item.quantity,
                                    :price_per_item => item.product.price)
        end

        @cart.destroy!
      else
        format.html { render :checkout_summary }
      end
    end
  end

  private
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
