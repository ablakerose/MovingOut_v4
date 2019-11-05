module OfferHelper

    def offers_header(item)
        if item
            "Offers on #{item.item_name}"
        else
            "All Offers"
        end
    end

    def render_offer_button(item)
        if offer = item.offers.find_by(user_id: current_user.id) 
            link_to "Update Offer", edit_offer_path(offer)
        else 
            link_to "Make an Offer", new_item_offer_path(item)
        end
    end

end