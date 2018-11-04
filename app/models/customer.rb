class Customer < ApplicationRecord
  belongs_to :province

  validates :name, :password, :address, presence:true
end
