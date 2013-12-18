class AddYearsToBusinesses < ActiveRecord::Migration
  def change
    add_column :businesses, :years_in_business, :date
  end
end
