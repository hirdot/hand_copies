# -*- coding: utf-8 -*-
require_relative './shain.rb'

# Bucho class inherited from Shain class for lesson 3.6
class Bucho < Shain
  def standup
    '部長がだるそうに立ちました。'
  end

  def calculate_salary(kihonkyu)
    kihonkyu * 3
  end
end
