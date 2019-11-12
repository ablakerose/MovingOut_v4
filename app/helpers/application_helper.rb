module ApplicationHelper


def num_to_currency(num)
    number_to_currency(num, unit: '$', delimiter: '.', separator: '.')
end
end
