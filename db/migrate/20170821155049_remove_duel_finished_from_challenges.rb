class RemoveDuelFinishedFromChallenges < ActiveRecord::Migration[5.1]
  def change
    remove_column :challenges, :duel_finished, :boolean
  end
end
