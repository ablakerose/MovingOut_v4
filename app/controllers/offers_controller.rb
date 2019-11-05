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

    def new
        id = params[:item_id]
        if id && @item = Item.find_by_id(id)
            @offer = @item.offers.build
        else 
            @offer = current_user.offers.build 
        end
    end

    def edit
        @offer = Offer.find(params[:id])
    end

    def destroy
        @item = Item.find(params[:id]).destroy
        redirect_to stores_path
    end

private

def formatted_created_by
    self.created_at.strftime("%b %d, %Y")
end

end