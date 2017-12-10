json.extract! subscription, :id, :title, :description, :subsimage, :created_at, :updated_at
json.url subscription_url(subscription, format: :json)
