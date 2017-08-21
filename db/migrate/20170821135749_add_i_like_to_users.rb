class AddILikeToUsers < ActiveRecord::Migration[5.1]
  def change
    add_column :users, :i_like, :string
  end
end
