class Image < ApplicationRecord
  belongs_to :property, optional: true
  mount_uploader :content, ImageUploader
end
