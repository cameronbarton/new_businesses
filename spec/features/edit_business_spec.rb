require 'spec_helper'

describe "Editing a business" do

  it "updates the business and shows the businesses updated details" do
    business = Business.create(business_attributes)

    visit business_url(business)

    click_link 'Edit'

    expect(current_path).to eq(edit_business_path(business))

    expect(find_field('Title').value).to eq(business.title)

    fill_in 'Title', with: "Updated Business Title"

    click_button 'Update Business'

    expect(current_path).to eq(business_path(business))

    expect(page).to have_text('Updated Business Title')

  end

end