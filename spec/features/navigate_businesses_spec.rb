require 'spec_helper'

describe "Navigating businesses" do
  it "allows navigating from the business detail page to the businesses listing page" do
    business = Business.create(business_attributes)

    visit business_path(business)

    click_link "All Businesses"

    expect(current_path).to eq(businesses_path)
  end

  it "allows navigating from the businesses listing page to the business detail page" do
    business = Business.create(business_attributes)

    visit businesses_url

    click_link business.title

    expect(current_path).to eq(business_path(business))
  end

end