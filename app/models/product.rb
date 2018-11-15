class Product < ApplicationRecord
  has_many :product_categories, dependent: :destroy
  has_many :categories, through: :product_categories
  has_many :shopping_carts

  accepts_nested_attributes_for :product_categories, allow_destroy: true


  belongs_to :brand

  validates :name, :price, presence:true

  mount_uploader :image_link, ImageUploader
end
