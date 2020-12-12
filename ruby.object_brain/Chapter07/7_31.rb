x = lambda { p "First Class Example" }
def f(x)
  x.call
end
f(x)