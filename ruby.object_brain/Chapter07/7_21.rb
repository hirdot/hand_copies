plusthree = Proc.new {|x| x + 3}
result = plusone.call(1,2)

p result

plusthree = lambda {|x| x + 3}
result = plusthree.call(1,2)

p result