order_total = 45
is_premium = false

if is_premium == true
  shipping_cost = 0
elsif order_total >= 50
  shipping_cost = 0
else
  shipping_cost = 10
end

puts "Your shipping cost is: $#{shipping_cost}"
