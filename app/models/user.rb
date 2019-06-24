class User < ApplicationRecord
  before_save { self.email.downcase! }
  validates :name, presence: true, length: { maximum: 50 }
  validates :email, presence: true, length: { maximum: 255 },
                  format: { with: /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i },
                  uniqueness: { case_sensitive: false }
  has_secure_password
    
  has_many :plans
  has_many :relationships
  has_many :followings, through: :relationships, source: :follow
  has_many :reverses_of_relationship, class_name: 'Relationship', foreign_key: 'follow_id'
  has_many :followers, through: :reverses_of_relationship, source: :user
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD

  has_many :favorites, dependent: :destroy
  has_many :favoritings, through: :favorites, source: :plan
  has_many :reverses_of_favorite, class_name: 'Favorite', foreign_key: 'plan_id'
  has_many :favoriters, through: :reverses_of_favorite, source: :user
  
=======
>>>>>>> origin/master
=======
>>>>>>> origin/master
=======
>>>>>>> origin/master
=======
>>>>>>> origin/master
  
  def follow(other_user)
    unless self == other_user
      self.relationships.find_or_create_by(follow_id: other_user.id)
    end
  end

  def unfollow(other_user)
    relationship = self.relationships.find_by(follow_id: other_user.id)
    relationship.destroy if relationship
  end

  def following?(other_user)
    self.followings.include?(other_user)
  end
  
  def feed_plans
    Plan.where(user_id: self.following_ids + [self.id])
  end
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
  
  def favorite(plan)
    self.favorites.find_or_create_by(plan_id: plan.id)
  end

  def unfavorite(plan)
    favorite = self.favorites.find_by(plan_id: plan.id)
    favorite.destroy if favorite
  end

  
  def favoriting?(user_id)
   favorites.find_by(user_id: user_id)
  end
  
  def feed_favorite_plans
    Plan.where(id: self.favoriting_ids)
  end
  
=======
>>>>>>> origin/master
=======
>>>>>>> origin/master
=======
>>>>>>> origin/master
=======
>>>>>>> origin/master
end
