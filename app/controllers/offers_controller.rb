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
            @offer = Offer.new 
            redirect_to stores_path
        end
    end

    def create
        id = params[:item_id]
        if id && @item = Item.find_by_id(id)
            offer_price = offer_params[:offer_price] 
            @offer = current_user.offers.build(item_id: id, offer_price: offer_price)
            @offer.save
            redirect_to user_path(current_user)
        else
            redirect_to new_item_offer_path(id)
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
def offer_params
    params.require(:offer).permit(:offer_price)
end

end