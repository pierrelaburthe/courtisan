class AddDefeatsToUsers < ActiveRecord::Migration[5.1]
  def change
    add_column :users, :defeats, :integer
  end
end
