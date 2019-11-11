class OffersController < ApplicationController

    def index
        id = params[:item_id]
        if id && @item = Item.find_by_id(id) 
            @offers = @item.offers
        else
            @offers = Offer.all 
        end
    end

    def new
        id = params[:item_id]
        if id && @item = Item.find_by_id(id)
            @offer = @item.offers.build
        else
            redirect_to stores_path
        end
    end

    def create
        id = params[:item_id]
        if id && @item = Item.find_by_id(id)
            offer_price = offer_params[:offer_price] 
            @offer = current_user.offers.build(item_id: id, offer_price: offer_price)
            if @offer.save
                redirect_to user_path(current_user)
                return
            end
        render :new
        end
    end

    def edit
        @offer = Offer.find(params[:id])
    end

    def update
        @offer = Offer.find(params[:id])
        if @offer        
            @offer.offer_price = offer_params[:offer_price] 
            if @offer.save
            redirect_to user_path(current_user)
            return
            end
        end
        render :edit
    end
    
    def show
    end

    def destroy
        @offer = Offer.find(params[:id]).destroy 
        redirect_to user_path(current_user)
    end

private
def offer_params
    params.require(:offer).permit(:offer_price)
end

def set_item_id
    id = params[:item_id]
end

end