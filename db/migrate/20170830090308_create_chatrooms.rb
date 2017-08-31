class CreateChatrooms < ActiveRecord::Migration[5.1]
  def change
    create_table :chatrooms do |t|
      t.references :seducer, references: :users
      t.references :seduced, references: :users
      t.timestamps
    end

    add_foreign_key :chatrooms, :users, column: :seducer_id
    add_foreign_key :chatrooms, :users, column: :seduced_id

  end
end
