require 'spec_helper'

describe "Creating a new business" do

  it "navigates to the new business page from the listings page, fills out and submits the form" do
    business = Business.create(business_attributes)

    visit businesses_url

    click_link 'Add New Business'

    expect(current_path).to eq(new_business_path)

    fill_in 'Title', with: "New Business Title"
    fill_in 'Website', with: "http://example.com"
    fill_in 'Description', with: "New Business Description"

    click_button 'Create Business'

    expect(current_path).to eq(business_path(Business.last))

    expect(page).to have_text('New Business Title')

  end

end