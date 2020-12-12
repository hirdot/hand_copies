require_relative 'shain'

# ShainFactory class for lesson 3.7
class ShainFactory
  def create(type, kihonkyu)
    eval "#{type}.new(kihonkyu)"
  end
end
