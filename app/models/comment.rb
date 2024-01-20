class Comment < ApplicationRecord
  has_one_attached :image
  validates :image, presence: true
  validates :strengths, presence: true
  validates :weaknesses, presence: true
  has_one :user
end
