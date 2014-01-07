require 'spec_helper'

describe "A business" do
  it "returns businesses ordered with years in business oldest to newest" do
    business1 = Business.create(business_attributes(years_in_business: 3.years.ago))
    business2 = Business.create(business_attributes(years_in_business: 2.years.ago))
    business3 = Business.create(business_attributes(years_in_business: 1.years.ago))

    expect(Business.started).to eq([business1, business2, business3])
  end
end