class ItemsController < ApplicationController
 
    def new
        @item= Item.new
    end

    def create
        @item = current_user.items.build(item_params)
        if @item.save
            redirect_to items_path
        else
            render :new
        end
        
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
