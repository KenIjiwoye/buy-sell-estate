class AddDataFieldsToUsers < ActiveRecord::Migration[6.1]
  def change
    add_column :users, :firstName, :string, null: false
    add_column :users, :lastName, :string, null: false
    add_column :users, :middleName, :string
    add_column :users, :title, :string
    add_column :users, :about, :text
    add_column :users, :workPhone, :integer
    add_column :users, :mobilePhone, :integer
    add_column :users, :skype, :string
    add_column :users, :facebook, :string
    add_column :users, :twitter, :string
    add_column :users, :instagram, :string
    add_column :users, :youtube, :string
    add_column :users, :pinterest, :string
  end
end
