class CreateBuyers < ActiveRecord::Migration
  def change
    create_table :buyers do |t|
      t.string :first_name
      t.string :last_name
      t.string :phone_number
      t.string :email
      t.integer :number_bedrooms
      t.integer :number_bathrooms
      t.string :city
      t.string :state
      t.integer :min_price
      t.integer :max_price

      t.timestamps null: false
    end
  end
end
