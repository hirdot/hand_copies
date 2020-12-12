def arg_one(&block)
  block.call 1
end

result = arg_one {|x| x + 3}
p result