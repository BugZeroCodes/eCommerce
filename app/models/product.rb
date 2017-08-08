class Product < ApplicationRecord
  mount_uploader :image, ImageUploader
  paginates_per 6

  belongs_to :category
end
