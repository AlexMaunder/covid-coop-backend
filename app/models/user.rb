class User < ApplicationRecord
  has_secure_password

  validates :email, :location, presence: true
  validates :email, uniqueness: true

  # prevents people circumventing the input type validation
  validates_format_of :email, :with => /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/i

  has_many :orders
  has_many :products
end
