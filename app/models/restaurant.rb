class Restaurant < ApplicationRecord
  # associations
  has_many :reviews, dependent: :destroy

  # validations
  validates :name, presence: true

  validates :address, presence: true

  CATEGORY = ["chinese", "italian", "japanese", "french", "belgian"]

  validates :category, inclusion: { in: CATEGORY }
end
