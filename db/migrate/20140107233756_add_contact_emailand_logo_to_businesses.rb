class AddContactEmailandLogoToBusinesses < ActiveRecord::Migration
  def change
    add_column :businesses, :contact_email, :string
    add_column :businesses, :logo, :string
  end
end
