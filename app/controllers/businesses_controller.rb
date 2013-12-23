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
    business_params = params.require(:business).permit(:title, :website, :description, :years_in_business)
    @business.update(business_params)
    redirect_to @business
  end
end
