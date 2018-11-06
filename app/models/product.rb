class Product < ApplicationRecord
  has_many :product_categories, dependent: :destroy
  has_many :categories, through: :product_categories
  belongs_to :brand

  validates :name, :price, presence:true

  mount_uploader :image_link, ImageUploader
end
