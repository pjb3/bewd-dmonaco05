Tax = 0.05

def calculate_total(order)
  cost = 0

  for item in order
    quantity = item[:quantity]
    price = item[:price]
    cost = cost + quantity * price
  end

  total = cost + cost * Tax

  "Total = $%.2f" % total
end

puts calculate_total [{:quantity=>2, :price=>2}]