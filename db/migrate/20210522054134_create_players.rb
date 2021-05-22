class CreatePlayers < ActiveRecord::Migration[6.0]
  def change
    create_table :players do |t|
      t.string :full_name
      t.bigint :mobile
      t.string :email
      t.integer :total_wins
      t.integer :total_loss

      t.timestamps

      t.index :full_name
      t.index :mobile
    end
  end
end
