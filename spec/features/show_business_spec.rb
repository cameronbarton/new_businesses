require 'spec_helper'

describe "Viewing a business" do

  it "shows the business" do
    business = Business.create(title: "Blue Daffodil Flowers",
                      website: "http://bluedaffodilflowers.com",
                      description: "")

    visit business_url(business)

    expect(page).to have_text(business.title)
    expect(page).to have_text(business.website)
    expect(page).to have_text(business.description)
  end

end