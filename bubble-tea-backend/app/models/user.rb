class User < ApplicationRecord
    has_many :reviews
    has_many :drinks

    has_secure_password
    
end
