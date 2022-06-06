json.extract! myapplication, :id, :title, :note, :detail, :status, :created_at, :updated_at
json.url myapplication_url(myapplication, format: :json)
