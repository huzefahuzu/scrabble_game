require 'pry'
class GamesController < ApplicationController
  before_action :set_game, only: %i[ show edit update destroy ]

  # GET /games or /games.json
  def index
    @games = Game.order(created_at: :desc).paginate(per_page: 10, page: params[:page] || 1)
  end

  # GET /games/1 or /games/1.json
  def show
    @gamers = @game.participants
  end

  # GET /games/new
  def new
    @game = Game.new

    # initialize 2 times because we need to save 2 participants entries for 1 game.
    @game.participants.build
    @game.participants.build
  end

  # GET /games/1/edit
  def edit
  end

  # POST /games or /games.json
  def create
    @game = Game.new(game_params)

    respond_to do |format|
      if @game.save

        format.html { redirect_to @game, notice: "Configurations #{find_winning_player} on winning the game !!!" }
        format.json { render :show, status: :created, location: @game }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @game.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /games/1 or /games/1.json
  def update
    update_participants

    respond_to do |format|
      if @game.update(game_params)
        format.html { redirect_to @game, notice: "Configurations #{find_winning_player} on winning the game !!!" }
        format.json { render :show, status: :ok, location: @game }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @game.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /games/1 or /games/1.json
  def destroy
    @game.destroy
    respond_to do |format|
      format.html { redirect_to games_url, notice: "Game was successfully deleted." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_game
      @game = Game.find(params[:id])
    end

    def find_winning_player
      @winning_player = @game.participants.order(player_total_score: :desc).first.player.full_name
    end

    def update_participants
      params[:game][:participants_attributes].values.each do |participant_hash|
        Participant.find(participant_hash[:id]).update_attributes(player_total_score: participant_hash[:player_total_score])
      end
      params[:game].delete(:participants_attributes)
    end

    # Only allow a list of trusted parameters through.
    def game_params
      params.require(:game).permit(:name, :rules_to_play, participants_attributes: [:player_id, :player_total_score])
    end
end
