class DrinkSerializer < ActiveModel::Serializer
  has_many :reviews
  belongs_to :user
  attributes :id, :drink_name, :description, :image, :likes, :price, :quantity, :user
end
