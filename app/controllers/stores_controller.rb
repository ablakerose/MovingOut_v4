class StoresController < ApplicationController

def index
    @items = Item.all
end

def show
    #@artist = Artist.find(params[:id])
    @item = Item.find(params[:id])
end


end
