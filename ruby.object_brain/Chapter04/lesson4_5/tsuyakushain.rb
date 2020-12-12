require_relative 'shain'
require_relative 'hakenmoto/hakenshain'

class Tsuyakushain < Shain
  def standup
    haken = Hakenshain.new
    haken.kiritsu
  end 
end

shain = Tsuyakushain.new
shain.standup
