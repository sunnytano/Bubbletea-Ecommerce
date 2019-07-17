class ReviewSerializer < ActiveModel::Serializer
  belongs_to :user
  belongs_to :drink
  attributes :id, :content, :user, :user_id, :drink, :drink_id
end
