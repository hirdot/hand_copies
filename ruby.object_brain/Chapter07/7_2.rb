public def plusfive
  return self + 5
end

prices = [1,5,7]
result = prices.map(&:plusfive)

p result