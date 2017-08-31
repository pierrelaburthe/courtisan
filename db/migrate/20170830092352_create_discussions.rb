class CreateDiscussions < ActiveRecord::Migration[5.1]
  def change
    create_table :discussions do |t|
      t.references :chatroom, foreign_key: true
      t.string :content
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
