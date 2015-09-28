class AddDeletedAtToListers < ActiveRecord::Migration
  def change
    add_column :listers, :deleted_at, :datetime
    add_index :listers, :deleted_at
  end
end
