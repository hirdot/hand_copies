def arg_one_twice
  yield(1) + yield(2)
end

result = arg_one_twice {|x| x + 3}
p result