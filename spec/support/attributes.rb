def business_attributes(overrides = {})
  {
    title: "Blue Daffodil Flowers",
    website: "http://bluedaffodilflowers.com",
    description: "",
    years_in_business: "2010-12-1",
    contact_email: "example@example.com",
    logo: "logo.png"
  }.merge(overrides)
end