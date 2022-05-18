class Restaurant < ApplicationRecord
  CATEGORY = %w[chinese italian japanese french belgian]

  has_many :reviews, dependent: :destroy
  validates :name, :address, :category, presence: true
  validates_inclusion_of :category, in: CATEGORY
end
