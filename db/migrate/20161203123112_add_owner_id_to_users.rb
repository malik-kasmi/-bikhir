class AddOwnerIdToUsers < ActiveRecord::Migration[5.0]
  def change
    add_column :posts, :owner_id, :integer

    add_foreign_key :posts, :users, column: :owner_id
    add_index :posts, :owner_id
  end
end
