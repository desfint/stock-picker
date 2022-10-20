def stock_picker(prices)
    highest_win = 0
    best_days = [0, 0]

    prices.each_with_index do |price, idx1|
        (idx1...prices.length).each do |idx2|
            difference = prices[idx2] - price

            if highest_win < difference
                highest_win = difference
                best_days[0] = idx1
                best_days[1] = idx2
            end
        end
    end

    return best_days
end
