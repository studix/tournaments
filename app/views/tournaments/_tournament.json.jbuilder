json.extract! tournament, :id, :title, :spielplan_verfuegbar_datum, :created_at, :updated_at
json.url tournament_url(tournament, format: :json)
