module ApplicationHelper
  def player_avg_score(player)
    (player.participants.sum(:player_total_score) / player.participants.count) rescue 0
  end
end
