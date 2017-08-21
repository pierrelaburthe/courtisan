class CreateChallenges < ActiveRecord::Migration[5.1]
  def change
    create_table :challenges do |t|
      t.references :seducer1, references: :users
      t.references :seducer2, references: :users
      t.references :seduced, references: :users
      t.references :winner, references: :users
      t.boolean :duel_finished
      t.integer :current_round

      t.timestamps
    end
    add_foreign_key :challenges, :users, column: :seducer1_id
    add_foreign_key :challenges, :users, column: :seducer2_id
    add_foreign_key :challenges, :users, column: :seduced_id
    add_foreign_key :challenges, :users, column: :winner_id
  end

  after_initialize :set_duel_finished

  def set_duel_finished
    self.duel_finished = "false"
  end
end
