class Store < ApplicationRecord
    has_many :items
    belongs_to :user

    #song belongs_to :artist
    #artist= method
        #thriller.artist = mj

    #store belongs_to :user
    #user=

    #
end
