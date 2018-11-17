class Province < ApplicationRecord
  belongs_to :tax

  validates :name, presence:true
end
