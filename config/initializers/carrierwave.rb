CarrierWave.configure do |config|
  config.storage = :upyun
  config.upyun_username = "youstar"
  config.upyun_password = 'youstar@123'
  config.upyun_bucket = "iiiui"
  config.upyun_bucket_domain = "iiiui.b0.upaiyun.com"
end
