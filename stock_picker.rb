def stock_picker(days)
  min_price = 0
  max_price = days.size - 1
  days.each_with_index do |price, day|
    if price < days[min_price]
      next if day >= max_price
      min_price = day
    elsif price > days[max_price]
      next if day <= min_price
      max_price = day
    end
  end
  result = "Best day to buy: #{min_price} \nBest day to sell: #{max_price}"
  result
end

puts stock_picker([17,3,6,9,15,8,6,1,10])