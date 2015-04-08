# encoding: utf-8

class ImageUploader < CarrierWave::Uploader::Base
  include CarrierWave::RMagick
  include CarrierWave::MimeTypes

  process :set_content_type
  storage :fog

  def store_dir
    "candidatos/#{model.name.parameterize.underscore}"
  end

  process :resize_to_limit => [250, 250]
end
