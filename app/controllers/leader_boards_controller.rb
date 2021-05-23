class LeaderBoardsController < ApplicationController
  def index
  end

  def toppers
    player_ids = Player.joins(:participants).select(:id).group('players.id').having("count(participants.id) >= 10")

    @players = Player.where(id: player_ids).includes(:participants).order("participants.player_total_score desc").paginate(per_page: 10, page: params[:page] || 1)
  end
end
