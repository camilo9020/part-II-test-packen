json.extract! admin_prize, :id, :name, :description, :amount, :created_at, :updated_at
json.url admin_prize_url(admin_prize, format: :json)