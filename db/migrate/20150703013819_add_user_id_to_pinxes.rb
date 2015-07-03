class AddUserIdToPinxes < ActiveRecord::Migration
  def change
    add_column :pinxes, :user_id, :integer
    add_index :pinxes, :user_id
  end
end
