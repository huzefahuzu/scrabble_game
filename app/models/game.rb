class Game < ApplicationRecord
  has_many :participants
  accepts_nested_attributes_for :participants, allow_destroy: true


  validates_presence_of :name

  after_commit :calculate_results_for_player, on: [:create, :update]

  # We need to set/update this after each create/update operation so that the actual stats of wins/loss of each player remains accurate.
  def calculate_results_for_player
    winning_player = participants.order(player_total_score: :desc).first.player
    winning_player.update_attributes(total_wins: winning_player.total_wins + 1)

    losing_player = participants.order(player_total_score: :desc).last.player
    losing_player.update_attributes(total_loss: losing_player.total_loss + 1)
  end
end
