class ProductsController < ApplicationController
  before_action :set_product, only: [:show]

  # GET /products
  # GET /products.json
  def index
    if params[:category] == nil
      @products = Product.all
    else
      @products = Product.where(category_id: params[:category])
    end
  end

  # GET /products/1
  # GET /products/1.json
  def show
  end

  private
  # Use callbacks to share common setup or constraints between actions.
  def set_product
    @product = Product.find(params[:id])
  end
end
