module OfferHelper

    def offers_header(item)
        if item
            "Offers on #{item.item_name}"
        else
            "All Offers"
        end
    end

end