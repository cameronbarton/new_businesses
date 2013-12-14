require 'spec_helper'

describe "Viewing the list of businesses" do

  it "shows the businesses" do
    business1 = Business.create(business_attributes)

    business2 = Business.create(title: "Sweet & Swanky Cakes",
                      website: "http://sweetandswankycakes.com",
                      description: "")

    business3 = Business.create(title: "Kimberly Kay Photography",
                      website: "http://kimberlykayphotography.com",
                      description: "")

    visit businesses_url

    expect(page).to have_text("3 Businesses")

    expect(page).to have_text(business1.title)
    expect(page).to have_text(business1.website)
    expect(page).to have_text(business1.description)

    expect(page).to have_text(business2.title)
    expect(page).to have_text(business3.title)
  end

end