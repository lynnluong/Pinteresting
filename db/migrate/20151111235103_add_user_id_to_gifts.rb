class AddUserIdToGifts < ActiveRecord::Migration
  def change
    add_column :gifts, :user_id, :integer
    add_index :gifts, :user_id
  end
end
