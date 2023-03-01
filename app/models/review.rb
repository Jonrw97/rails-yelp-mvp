class Review < ApplicationRecord
  validates :content, presence: true
  validates :rating,
            presence: true,
            numericality: { only_integer: true },
            inclusion: { in: (0..5).to_a,
                         message: '%<value> is not a valid category' }
  belongs_to :restaurant
end
