json.extract! blog, :id, :title, :blogimage, :videolink, :body, :user_id, :metadescription, :metakeywords, :created_at, :updated_at
json.url blog_url(blog, format: :json)
