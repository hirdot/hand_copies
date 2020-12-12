require_relative 'hakenmoto/hakenshain'

class Hakenshain
  alias standup kiritsu
end

shain = Hakenshain.new
shain.standup
