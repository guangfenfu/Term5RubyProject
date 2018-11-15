class Customer < ApplicationRecord
  belongs_to :province
  has_many :shopping_carts

  validates :name, :password, :address, presence:true
end
