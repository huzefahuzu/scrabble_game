json.extract! player, :id, :full_name, :mobile, :email, :total_wins, :total_loss, :created_at, :updated_at
json.url player_url(player, format: :json)
