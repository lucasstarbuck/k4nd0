class AddUserIdToTaskblocks < ActiveRecord::Migration
  def change
    add_column :taskblocks, :user_id, :integer
    add_index :taskblocks, :user_id
  end
end
