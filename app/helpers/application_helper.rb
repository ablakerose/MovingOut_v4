module ApplicationHelper

    def number_to_currency(number, precision)
        number_to_currency(number, :precision => 0, :format => "-%u%n")
    end
    
end
