class AddIAmToUsers < ActiveRecord::Migration[5.1]
  def change
    add_column :users, :i_am, :string
  end
end
