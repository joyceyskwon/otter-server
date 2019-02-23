class TransactionSerializer < ActiveModel::Serializer
  attributes :id, :user_id, :category_id, :name, :date, :amount, :location
end
