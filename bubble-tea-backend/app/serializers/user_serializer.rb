class UserSerializer < ActiveModel::Serializer
  has_many :reviews
  has_many :drinks
  attributes :id, :username, :password_digest, :p_img, :drinks, :reviews
end
