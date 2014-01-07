class Business < ActiveRecord::Base
  def rank?
    years_in_business < Date.today - 2.years
  end

  def self.started
    where("years_in_business <= ?", Time.now).order("years_in_business asc")
  end
end