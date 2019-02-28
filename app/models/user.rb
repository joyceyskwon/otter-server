class User < ApplicationRecord
  has_secure_password

  validates :username, presence: :true
  validates :username, uniqueness: :true

  has_many :transactions
  has_many :categories, through: :transactions
end
