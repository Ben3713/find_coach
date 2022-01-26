class AddUsernameAdressToUser < ActiveRecord::Migration[6.1]
  def change
    add_column :users, :username, :string
    add_column :users, :adress, :string
  end
end
