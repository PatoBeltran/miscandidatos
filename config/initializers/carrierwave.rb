CarrierWave.configure do |config|
  config.fog_credentials = {
    provider: "AWS",
    aws_access_key_id: "AKIAJDSNBJ77AEC42ATQ",
    aws_secret_access_key: "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"
  }
  config.fog_directory = "yoelijo"
end
