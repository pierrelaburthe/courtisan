class CreateWaitingLists < ActiveRecord::Migration[5.1]
  def change
    create_table :waiting_lists do |t|
      t.references :seduced, references: :users
      t.references :seducer1, references: :users
      t.references :seducer2, references: :users

      t.timestamps
    end
    add_foreign_key :waiting_lists, :users, column: :seduced_id
    add_foreign_key :waiting_lists, :users, column: :seducer1_id
    add_foreign_key :waiting_lists, :users, column: :seducer2_id
  end
end
