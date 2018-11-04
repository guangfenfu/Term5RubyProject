class Province < ApplicationRecord
  belongs_to :tax
  has_many :customers, dependent: :destroy

  validates :name, presence:true
end
