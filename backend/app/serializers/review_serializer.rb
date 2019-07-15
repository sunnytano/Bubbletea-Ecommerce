class ReviewSerializer < ActiveModel::Serializer
  belongs_to :drink 
  belongs_to :user
  attributes :id, :content, :user, :drink_id
end
