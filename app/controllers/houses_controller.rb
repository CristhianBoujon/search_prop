class HousesController < ApplicationController
  before_action :set_house, only: [:show, :update, :destroy]

  # GET /houses
  def index
    @houses = House.all

    render json: @houses, each_serializer: PropertyListSerializer
  end

  # GET /houses/1
  def show
    render json: @house, serializer: PropertySerializer
  end

  # POST /houses
  def create
    @house = House.new(house_params)

    if @house.save
      render json: @house, status: :created, location: @house
    else
      render json: @house.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /houses/1
  def update
    if @house.update(house_params)
      render json: @house
    else
      render json: @house.errors, status: :unprocessable_entity
    end
  end

  # DELETE /houses/1
  def destroy
    @house.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_house
      @house = House.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def house_params
      permitted = params.permit(:price, :name, :detail, :bedrooms, :bathrooms, images: [])

      permitted[:image_ids] = permitted[:images] || nil
      permitted.extract! :images

      return permitted
    end
end
