class Province < ApplicationRecord
  belongs_to :tax
  has_many :customers, dependent: :destroy
  # has_many :users, dependent: :destroy

  validates :name, presence:true
end
