class User < ApplicationRecord
    has_secure_password
    validates :username, presence: true
    validates :username, uniqueness: true
    validates :email, presence: true
    validates :email, uniqueness: true
    #validates :password, length 
    #email that looks like a real email address
    #built in method called to have two sign-up password fields and have password confirmation.

    has_many :offers
    has_many :items, through: :offers
    has_one :store
end
