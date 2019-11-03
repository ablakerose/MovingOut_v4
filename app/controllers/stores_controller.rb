class StoresController < ApplicationController
#before_action :redirect_if_not_logged_in

def index
    @items = Item.all
end

def show
    #@artist = Artist.find(params[:id])
    @item = Item.find(params[:id])
end


end
