class User < ApplicationRecord
    has_secure_password
    validates :username, uniqueness: true
    has_many :offers
    has_many :items, through: :offers
    has_one :store
end
