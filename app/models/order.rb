class Order < ApplicationRecord
  has_many :product_snap_shots, dependent: :destroy
  has_one :user_snap_shot
end
