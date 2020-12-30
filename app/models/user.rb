class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable
    has_many :active_relationships, class_name: "Friendship", foreign_key: :friend_id, dependent: :destroy
    has_many :friends, through: :active_relationships, source: :friend
    
    has_many :passive_relationships, class_name: "Friendship", foreign_key: :friender_id, dependent: :destroy
    has_many :frienders, through: :passive_relationships, source: :friend
    has_many :posts
    has_many :comments, through: :posts
    has_many :comments
    has_one_attached :profile_pic

end
