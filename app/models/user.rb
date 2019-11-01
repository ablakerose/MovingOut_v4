class User < ApplicationRecord
    has_secure_password
    has_many :offers
    has_many :items, through: :offers
    has_one :store
end
