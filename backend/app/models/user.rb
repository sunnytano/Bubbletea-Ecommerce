class User < ApplicationRecord
    has_many :reviews
    has_many :drinks
    # belongs_to :store
end
