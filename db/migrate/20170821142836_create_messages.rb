class CreateMessages < ActiveRecord::Migration[5.1]
  def change
    create_table :messages do |t|
      t.references :user, foreign_key: true
      t.string :content
      t.references :challenge, foreign_key: true
      t.integer :liked

      t.timestamps
    end
  end
end
