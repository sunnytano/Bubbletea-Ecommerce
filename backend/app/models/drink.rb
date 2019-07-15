class Drink < ApplicationRecord
    #belongs_to :store
    has_many :users
    has_many :reviews
end
