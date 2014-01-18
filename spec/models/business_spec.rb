require 'spec_helper'

describe "A business" do
  it "returns businesses ordered with years in business oldest to newest" do
    business1 = Business.create(business_attributes(years_in_business: 3.years.ago))
    business2 = Business.create(business_attributes(years_in_business: 2.years.ago))
    business3 = Business.create(business_attributes(years_in_business: 1.years.ago))

    expect(Business.started).to eq([business1, business2, business3])
  end


  it "requires a name" do
    business = Business.new(title: "")

    expect(business.valid?).to be_false
    expect(business.errors[:title].any?).to be_true
  end

  it "requires a description" do
    business = Business.new(description: "")

    expect(business.valid?).to be_false
    expect(business.errors[:description].any?).to be_true
  end

  it "accepts a description up to 500 characters" do
    business = Business.new(description: "X" * 501)

    expect(business.valid?).to be_false
    expect(business.errors[:description].any?).to be_true
  end

  it "accepts a properly formatted website URLs" do
    sites = %w[http://example.com https://example]
    sites.each do |site|
      business = Business.new(website: site)

      expect(business.valid?).to be_false
      expect(business.errors[:website].any?).to be_false
    end
  end

  it "rejects improperly formatted website URLs" do
    sites = %w[example.com http examplehttp]
    sites.each do |site|
      business = Business.new(website: site)

      expect(business.valid?).to be_false
      expect(business.errors[:website].any?).to be_true
    end
  end

  it "accepts properly formatted image file names" do
    file_names = %w[e.png event.png event.jpg event.gif EVENT.GIF]
    file_names.each do |file_name|
      business = Business.new(logo: file_name)

      expect(business.valid?).to be_false
      expect(business.errors[:logo].any?).to be_false
    end
  end

  it "rejects improperly formatted image file names" do
    file_names = %w[event .jpg .png .gif event.pdf event.doc]
    file_names.each do |file_name|
      business = Business.new(logo: file_name)

      expect(business.valid?).to be_false
      expect(business.errors[:logo].any?).to be_true
    end
  end

end