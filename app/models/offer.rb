class Offer < ApplicationRecord
    belongs_to :user
    belongs_to :item
    validates :user_id, presence: true
    validates :item_id, presence: true
    validates :offer_price, presence: true
    validates :offer_price, numericality: { greater_than_or_equal_to: 0 } 
    


def number_to_USD(price)
    number_to_currency(price, :unit =>"$")
end

    
end
