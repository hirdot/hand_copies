x = 1
func = Proc.new {|y|x=y;p x}
func.call(3)
p x