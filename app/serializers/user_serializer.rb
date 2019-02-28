class UserSerializer < ActiveModel::Serializer
  attributes :id, :name, :username, :password, :bank, :account_number, :monthly_income
  has_many :transactions
end
