# coding: utf-8

require_relative 'shain'

# Torishimariyaku class for lesson 3.6
class Torishimariyaku < Shain
  def calculate_salary(kihonkyu)
    kihonkyu * 4 + 2
  end

  def standup
    'ふんぞり返って立ち上がりました。'
  end
end
