class User < ApplicationRecord
  has_secure_password

  validates :username, presence: :true
  validates :username, uniqueness: :true
  # validates :password, length: { minimum: 8 }

  has_many :transactions
  has_many :categories, through: :transactions
end
