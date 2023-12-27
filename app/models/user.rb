class User < ApplicationRecord
  has_many :posts
  has_many :comments

  validates :username, :password, presence: true
  validates :username, length: { minimum: 5 }, uniqueness: true
end
