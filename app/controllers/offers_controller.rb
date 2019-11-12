class OffersController < ApplicationController
before_action :set_item_if_nested, only: [:new, :index, :create]

    def index
        if @item
            @offers = @item.offers
        else
            @offers = Offer.all 
        end
    end

    def new
        if @item
            @offer = @item.offers.build
        else
            redirect_to stores_path
        end
    end

    def create
        if @item
            offer_price = offer_params[:offer_price] 
            @offer = current_user.offers.build(item_id: @item.id, offer_price: offer_price)
            if @offer.save
                redirect_to user_path(current_user)
                return
            end
        render :new
        end
    end

    def edit
        set_offer
    end

    def update
        set_offer
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

    def set_item_if_nested
        @item = Item.find_by_id(params[:item_id]) if params[:item_id]
    end

    def set_offer
        @offer = Offer.find(params[:id])
    end

end