class Business < ActiveRecord::Base
  def rank?
    years_in_business < Date.today - 2.years
  end

  def self.started
    where("years_in_business <= ?", Time.now).order("years_in_business asc")
  end

  validates :title, :description, presence: true

  validates :description, length: { maximum: 500 }

  validates :website, format: {
    with: /https?:\/\/[\S]+\b/i,
    message: "must reference a valid URL"
  }

  validates :logo, format: {
    with: /\w+\.(gif|jpg|png)\z/i,
    message: "must reference a GIF, JPG, or PNG image"
  }
end