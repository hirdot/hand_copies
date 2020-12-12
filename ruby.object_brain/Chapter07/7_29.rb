def block_examle
  yield
end

func = Proc.new {p "Block Example"}

block_examle(&func)