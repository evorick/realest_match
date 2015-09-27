class AddUserIdToBuyers < ActiveRecord::Migration
  def change
    add_column :buyers, :user_id, :integer
  end
end
