module PlayersHelper
  def get_high_score_details(player)
    participant = player.participants.order(player_total_score: :desc).first

    if participant.present?
      highest_score = participant&.player_total_score
      game = participant.game
      against_player = game.participants.where("player_id != ?", player.id).first.player.full_name

      [highest_score, against_player, game.created_at.strftime("%B %d %Y")]
    else
      'NA'
    end
  end
end
