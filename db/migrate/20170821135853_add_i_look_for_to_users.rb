class AddILookForToUsers < ActiveRecord::Migration[5.1]
  def change
    add_column :users, :i_look_for, :string
  end
end
