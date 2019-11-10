class Offer < ApplicationRecord
    belongs_to :user
    belongs_to :item
    validates :user_id, presence: true
    validates :item_id, presence: true
    validates :offer_price, presence: true

def number_to_USD(price)
    number_to_currency(price, :unit =>"$")
end

    
end
