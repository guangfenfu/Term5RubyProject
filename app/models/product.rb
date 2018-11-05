class Product < ApplicationRecord
  belongs_to :category
  belongs_to :brand

  validates :name, :price, presence:true

  mount_uploader :image_link, ImageUploader
end
