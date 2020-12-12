# -*- coding: utf-8 -*-
require_relative './shain.rb'

# Tanto class inherited from Shain class for lesson 3.6
class Tanto < Shain
  def standup
    '担当は慌てて起立しました。'
  end

  def calculate_salary(kihonkyu)
    kihonkyu
  end
end
