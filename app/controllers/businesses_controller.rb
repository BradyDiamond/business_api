class BusinessesController < ApplicationController

  def index
    @businesses = {"business": "jack's clam shack"}
    json_response(@businesses)
  end

  def show
    @business = Business.find(params[:id])
    json_response(@business)
  end

  def create
    @business = Business.create(business_params)
    json_response(@quote)
  end

  def update
    @business = Business.find(params[:id])
    @business.update(business_params)
  end

  def destroy
    @business = Business.find(params[:id])
    @business.destroy
  end

  private
  def json_response(object, status = :ok)
    render json: object, status: status
  end
end