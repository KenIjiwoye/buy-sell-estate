class CreateProperties < ActiveRecord::Migration[6.1]
  def change
    create_table :properties do |t|
      t.string :address1, null: false
      t.string :address2
      t.string :city, null: false
      t.string :state, null: false
      t.integer :zipcode, null: false
      t.text :description
      t.integer :price, null: false
      t.string :propertyType, null: false, default: "house"
      t.string :status, null: false, default: "sale"
      t.integer :area, null: false
      t.integer :beds
      t.integer :baths
      t.integer :garage
      t.belongs_to :user

      t.timestamps
    end
  end
end
