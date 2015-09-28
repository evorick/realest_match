class AddDeletedAtToBuyers < ActiveRecord::Migration
  def change
    add_column :buyers, :deleted_at, :datetime
    add_index :buyers, :deleted_at
  end
end
