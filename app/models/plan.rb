class Plan < ApplicationRecord
  belongs_to :user
  
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
  has_many :favorites, dependent: :destroy
  has_many :favoriting_users, through: :favorites, source: :user
  
  validates :title, presence: true, length: { maximum: 100 }
  
  # 栞をお気に入りに追加する
  def favoriting(user)
    favorites.create(user_id: user.id)
  end

  # 栞のお気に入りを解除する
  def unfavorite(user)
    favorites.find_by(user_id: user.id).destroy
  end
  
  #現在のユーザがお気に入りにしていたらtrueを返す
  def favoriting?(user)
    favoriting_users.include?(user)
  end
=======
  validates :title, presence: true, length: { maximum: 100 }
>>>>>>> origin/master
=======
  validates :title, presence: true, length: { maximum: 100 }
>>>>>>> origin/master
=======
  validates :title, presence: true, length: { maximum: 100 }
>>>>>>> origin/master
=======
  validates :title, presence: true, length: { maximum: 100 }
>>>>>>> origin/master
end
