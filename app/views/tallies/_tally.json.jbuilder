json.extract! tally, :id, :name, :head, :body, :total, :kills, :created_at, :updated_at
json.url tally_url(tally, format: :json)