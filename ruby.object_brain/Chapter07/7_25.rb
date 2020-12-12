def count
  number = 0
  func = lambda {|i| number += i}
  func
end

fun = count
p fun.call(1)
p fun.call(2)
p fun.call(3)
p fun.call(4)