total = 0
prices = [1,5,7]
result = prices.reduce {|total, n|total + n}

p result