class CreateGames < ActiveRecord::Migration[6.0]
  def change
    create_table :games do |t|
      t.string :name
      t.text :rules_to_play

      t.timestamps
    end
  end
end
