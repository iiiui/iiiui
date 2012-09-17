# encoding: utf-8

class PhotoUploader < CarrierWave::Uploader::Base
  storage :upyun

  def store_dir
    "#{model.class.to_s.underscore}/#{mounted_as}"
  end

  # def default_url
  #   # You can use FTP to upload a default image
  #   "#{Setting.upload_url}/blank.png#{version_name}"
  # end

  # Override url method to implement with "Image Space"
  def url(version_name = "")
    @url ||= super({})
    version_name = version_name.to_s
    return @url if version_name.blank?
    if not version_name.in?(IMAGE_UPLOADER_ALLOW_IMAGE_VERSION_NAMES)
      # To protected version name using, when it not defined, this will be give an error message in development environment
      raise "ImageUploader version_name:#{version_name} not allow."
    end
    [@url,version_name].join("!") # thumb split with "!"
  end

  def extension_white_list
    %w(jpg jpeg gif png)
  end

  # def filename
  #   if super.present?
  #     # model.uploader_secure_token ||= SecureRandom.uuid.gsub("-","")
  #     Rails.logger.debug("(BaseUploader.filename) #{model.uploader_secure_token}")
  #     "#{model.uploader_secure_token}.#{file.extension.downcase}"
  #   end
  # end

end
