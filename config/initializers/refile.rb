# config/initializers/refile.rb
require "refile/s3"

aws = {
  :access_key_id => ENV['S3_KEY'],
  :secret_access_key => ENV['S3_SECRET'],
  :region => "us-west-2",
  :bucket => ENV['S3_BUCKET_NAME'],
}
Refile.cache = Refile::S3.new(prefix: "cache", **aws)
Refile.store = Refile::S3.new(prefix: "store", **aws)
