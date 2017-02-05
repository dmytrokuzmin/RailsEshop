class ManufacturersController < ApplicationController
  before_action :set_manufacturer, only: [:show]

  # GET /manufacturers
  # GET /manufacturers.json
  def index
    @manufacturers = Manufacturer.all
  end

  # GET /manufacturers/1
  # GET /manufacturers/1.json
  def show
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_manufacturer
      @manufacturer = Manufacturer.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def manufacturer_params
      params.require(:manufacturer).permit(:name, :description)
    end
end
