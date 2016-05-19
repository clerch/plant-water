class User < ActiveRecord::Base

  has_many :notifications
  has_many :plants

  validates :username, uniqueness: true, presence: true
  validates :email, presence: true, uniqueness: true, format: { with: /.*@.*\..*/, message: "a valid email is required" }
  validates :phone, presence: true, uniqueness: true, format: { with: /\b(?:(?:\+?1\s*(?:[.-]\s*)?)?(?:\(\s*([2-9]1[02-9]|[2-9][02-8]1|[2-9][02-8][02-9])\s*\)|([2-9]1[02-9]|[2-9][02-8]1|[2-9][02-8][02-9]))\s*(?:[.-]\s*)?)?([2-9]1[02-9]|[2-9][02-9]1|[2-9][02-9]{2})\s*(?:[.-]\s*)?([0-9]{4})(?:\s*(?:#|x\.?|ext\.?|extension)\s*(\d+))?\b/, message: "a valid phone number is required" }
  validates :password, presence: true

end