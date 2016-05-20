class User < ActiveRecord::Base

  has_many :notifications
  has_many :plants

  validates :username, uniqueness: true, presence: true
  validates :email, presence: true, uniqueness: true, format: { with: /.*@.*\..*/, message: "a valid email is required" }
  validates :phone, presence: true
  validates :password, presence: true

end