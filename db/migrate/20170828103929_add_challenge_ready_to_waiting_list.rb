class AddChallengeReadyToWaitingList < ActiveRecord::Migration[5.1]
  def change
    add_column :waiting_lists, :challenge_ready, :boolean
  end
end
