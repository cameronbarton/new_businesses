class Business < ActiveRecord::Base
  def rank?
    years_in_business < Date.today - 2.years
  end
end