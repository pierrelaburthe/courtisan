class AddAttractedByToUsers < ActiveRecord::Migration[5.1]
  def change
    add_column :users, :attracted_by, :string
  end
end
