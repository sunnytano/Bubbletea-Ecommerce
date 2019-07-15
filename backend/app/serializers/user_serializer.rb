class UserSerializer < ActiveModel::Serializer
  has_many :reviews
  has_many :drinks
  attributes :id, :username, :password, :review, :drink, :review_id, :drink_id
end
