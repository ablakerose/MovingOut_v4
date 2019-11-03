class OffersController < ApplicationController

    def index
        id = params[:item_id]
        if id && @item = Item.find_by_id(id) 
            @offers = @item.offers
        # if params[:item_id]
        #     @offers = Offer.where(item_id: params[:item_id])
        else
            @offers = Offer.all 
        end
    end

end