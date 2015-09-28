class CreateListers < ActiveRecord::Migration
  def change
    create_table :listers do |t|
      t.string :first_name
      t.string :last_name
      t.string :phone_number
      t.string :email
      t.integer :number_bedrooms
      t.integer :number_bathrooms
      t.string :city
      t.string :state
      t.integer :price

      t.timestamps null: false
    end
  end
end
