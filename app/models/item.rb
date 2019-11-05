class Item < ApplicationRecord
    has_many :offers
    has_many :users, through: :offers
    belongs_to :store
    accepts_nested_attributes_for :offers
end
