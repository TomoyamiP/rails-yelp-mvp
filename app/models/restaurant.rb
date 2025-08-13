class Restaurant < ApplicationRecord
  # associations
  has_many :reviews, dependent: :destroy

  # validations
  validates :name, presence: true

  validates :address, presence: true

  CATEGORY = ["Chinese", "Italian", "Japanese", "French", "Belgian"]

  validates :category, inclusion: { in: CATEGORY }
end
