class BusinessesController < ApplicationController
  def index
    @businesses = Business.all
  end

  def show
    @business = Business.find(params[:id])
  end

  def edit
    @business = Business.find(params[:id])
  end

  def update
    @business = Business.find(params[:id])
    @business.update(business_params)
    redirect_to @business
  end

  def new
    @business = Business.new
  end

  def create
    @business = Business.new(business_params)
    @business.save
    redirect_to @business
  end

private

  def business_params
    params.require(:business).permit(:title, :website, :description, :years_in_business)
  end
end
