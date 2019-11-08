class Item < ApplicationRecord
    has_many :offers
    has_many :users, through: :offers
    belongs_to :store
    accepts_nested_attributes_for :offers
    #def offers_atttributes=(offer_price, etc.)
    #validates :item_name, presence: true

    scope :sold, -> { where(sold: true) }
    scope :available, -> { where(sold: false) }
    scope :sort_by_date, -> { order(:created_at)}

end
