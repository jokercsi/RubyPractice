class Review < ApplicationRecord
  belongs_to :movie
  validates :points, presence: true
  validates :points, numericality: { only_integer: true}
  validates :points, numericality: { greater_than: 0, less_than: 5 }
end
