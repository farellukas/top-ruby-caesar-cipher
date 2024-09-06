def stock_picker(prices)
  l, r = 0, 0
  max_profit = 0

  prices.each_with_index do |buy_price, buy_day|
    prices[buy_day..-1].each_with_index do |sell_price, sell_day|
      profit = sell_price - buy_price
      if profit > max_profit
        l, r = buy_day, sell_day + buy_day
        max_profit = profit
      end
    end
  end

  [l, r]
end

puts stock_picker([17,3,6,9,15,8,6,1,10]) # [1, 4]