json.extract! fablepet, :id, :name, :string, :unique_id, :string, :species, :pattern, :integer, :colors, :[integer], :created_at, :updated_at
json.url fablepet_url(fablepet, format: :json)
