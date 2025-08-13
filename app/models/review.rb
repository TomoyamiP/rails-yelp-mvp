class Review < ApplicationRecord
  # associations
  belongs_to :restaurant

  # validations
  validates :content, presence: true

  validates :rating, presence: true,
                     numericality: { only_integer: true },
                     inclusion: { in: 0..5 }
end
