
def stock_picker(arr)
    days_left = []
    profit = []
    
    # Iterate to find the best posible profit on each day.
    for i in (0..arr.length-1)
        days_left[i] = arr[i..-1]
        profit[i] = days_left[i].max - days_left[i][0]
    end

    bigest_profit = profit.max
    best_buy = profit.index(bigest_profit)  # Index for best day to buy.
    best_selling_price = days_left[best_buy].max
    stock_pick = [best_buy, arr.index(best_selling_price)]  # Best buy and sell index.
end

stock_picker([17,3,6,9,15,8,6,1,10])