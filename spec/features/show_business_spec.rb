require 'spec_helper'

describe "Viewing a business" do

  it "shows the business" do
    business = Business.create(business_attributes)

    visit business_url(business)

    expect(page).to have_text(business.title)
    expect(page).to have_text(business.website)
    expect(page).to have_text(business.description)
  end

  it "shows 'Veteran!' if the business is older than 2 years" do
    business = Business.create(business_attributes(years_in_business: "2010-12-1"))

    visit business_url(business)

    expect(page).to have_text("Veteran!")
  end

  it "shows 'Rookie!' if the business is newer than 2 years" do
    business = Business.create(business_attributes(years_in_business: "2012-12-1"))

    visit business_url(business)

    expect(page).to have_text("Rookie!")
  end
end