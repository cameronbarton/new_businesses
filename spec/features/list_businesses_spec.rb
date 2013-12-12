require 'spec_helper'

describe "Viewing the list of businesses" do

  it "shows the businesses" do
    visit businesses_url

    expect(page).to have_text("3 Businesses")
    expect(page).to have_text("Blue Daffodil Flowers")
    expect(page).to have_text("Sweet & Swanky Cakes")
    expect(page).to have_text("Kimberly Kay Photography")
  end

end