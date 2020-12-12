f = lambda { |x| x + 3 }
g = lambda { |x| x + 8 }

h = lambda { |x| g.(f.(x)) }
p h.(2)