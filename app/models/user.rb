class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  belongs_to :user_type

  has_one :agent
  has_one :performer

  has_many :posts
  has_many :video_posts,
           :through => :posts

  has_many :photo_posts,
           :through => :posts

  has_many :received_comments,
           :through => :posts,
           :source  => :comments

  has_many :posted_comments,
           :class_name => "Comment"

  accepts_nested_attributes_for :agent
  accepts_nested_attributes_for :performer
end
