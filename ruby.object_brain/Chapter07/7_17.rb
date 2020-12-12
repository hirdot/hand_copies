def arg_one
  yield 1
end

result = arg_one {|x| x + 3}
p result