require 'spec_helper'

describe "Deleting a business" do

  it "destroys the business" do
    business = Business.create(business_attributes)

    visit business_url(business)

    click_link 'Delete'

    expect(current_path).to eq(businesses_path)
    expect(page).not_to have_text(business.title)

  end

end