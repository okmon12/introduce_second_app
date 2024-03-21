class Comment < ApplicationRecord
  has_one_attached :image
  validates :image, presence: true
  validates :strengths, presence: true
  validates :weaknesses, presence: true
  validates :message, presence: true
  belongs_to :user
  validates :hobby, presence: true
end
