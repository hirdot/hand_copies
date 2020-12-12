result = ["2","4","13","3","1","10"].sort
p result
result = ["2","4","13","3","1","10"].sort { |a,b| a.to_i <=> b.to_i }
p result
result = ["2","4","13","3","1","10"].sort { |b,a| a.to_i <=> b.to_i }
p result