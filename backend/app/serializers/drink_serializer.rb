class DrinkSerializer < ActiveModel::Serializer
  has_many :users
  has_many :reviews
  attributes :id, :drink_name, :description, :image, :likes #, :store, :store_id
end
