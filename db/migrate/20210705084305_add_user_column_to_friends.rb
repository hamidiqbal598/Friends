class AddUserColumnToFriends < ActiveRecord::Migration[6.1]
  def up
    add_column :friends, :user_id, :string
    add_index :friends, :user_id
  end

  def down
    remove_index :friends, :user_id
    remove_column :friends, :user_id, :string
  end
end
