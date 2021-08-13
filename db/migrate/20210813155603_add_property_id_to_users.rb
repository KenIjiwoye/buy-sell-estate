class AddPropertyIdToUsers < ActiveRecord::Migration[6.1]
  def change
    add_column :users, :propertyId, :integer
  end
end
