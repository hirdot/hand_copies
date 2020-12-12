x = lambda {
return lambda { p "First Class Return" }
}

z = x.call
z.call