def multi(i)
  func = Proc.new {|x| x * 2}
  func.call(i)
end

p multi(2)
p multi(6)