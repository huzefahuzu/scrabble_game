class AlterPlayerColumns < ActiveRecord::Migration[6.0]
  def change
    change_column :players, :total_wins, :integer, default: 0
    change_column :players, :total_loss, :integer, default: 0
  end
end
