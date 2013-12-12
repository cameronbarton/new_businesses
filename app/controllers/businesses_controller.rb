class BusinessesController < ApplicationController
  def index
    @businesses = ["Blue Daffodil Flowers", "Sweet & Swanky Cakes", "Kimberly Kay Photography"]
  end
end
