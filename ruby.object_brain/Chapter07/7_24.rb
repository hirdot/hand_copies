def count
  number = 0
  func = lambda {|i| number += i}
  func
end

p count.call(1)
p count.call(2)
p count.call(3)
p count.call(4)