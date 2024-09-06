# frozen_string_literal: true

def stock_picker(prices)
  l = 0
  r = 0
  max_profit = 0

  prices.each_with_index do |buy_price, buy_day|
    prices[buy_day..].each_with_index do |sell_price, sell_day|
      profit = sell_price - buy_price
      next unless profit > max_profit

      l = buy_day
      r = sell_day + buy_day
      max_profit = profit
    end
  end

  [l, r]
end

puts stock_picker([17, 3, 6, 9, 15, 8, 6, 1, 10]) # [1, 4]
