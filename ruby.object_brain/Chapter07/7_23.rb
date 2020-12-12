def multi(i)
  func = Proc.new
  func.call(i)
end

p multi(2) {|x|x*6}
p multi(6) {|x|x*8}
p multi(8)