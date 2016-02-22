S3DirectUpload.config do |c|
  c.access_key_id     = Rails.configuration.aws[:access_key_id]
  c.secret_access_key = Rails.configuration.aws[:secret_access_key]
  c.bucket            = Rails.configuration.aws[:bucket]
  c.region            = "s3"
end
