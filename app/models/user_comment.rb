class UserComment
  include ActiveModel::Model
  attr_accessor :birthdate, :strengths, :weaknesses, :image, :message, :user_id,:name, :nickname

  validates :image, presence: true
  validates :strengths, presence: true
  validates :weaknesses, presence: true
  validates :message, presence: true
  validates :nickname, presence: true, length: { maximum:6 }
  validates :name, presence: true
  
  validates :user_id, presence: true

  def save
  user = User.create(name: name, nickname: nickname)
    Comment.create(birthdate: birthdate, strengths: strengths, weaknesses: weaknesses, image: image, message: message, user_id: user.id)
  end
end