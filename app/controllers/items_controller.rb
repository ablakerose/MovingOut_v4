class ItemsController < ApplicationController

    def new
        @item= Item.new
    end

    def create
        @item = current_user.items.build(item_params)
        #number 1 reason something doesn't save because one of the
        #belongs_to relationships is not fulfilled
        if @item.save
            redirect_to items_path
        #LEFT OFF HERE. 
        else
            render :new
        end
        #generally, this is the logic for the create action. Usually doesn't need to be very long.
    
    def show
        @item = Item.find_by_id(params[:id])
    end

    def index
        @items = Item.all
    end

end

private

    def item_params
        params.require(:item).permit(:list_price, :item_name, :sold)
    end



end
