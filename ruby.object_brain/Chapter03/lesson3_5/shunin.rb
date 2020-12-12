# -*- coding: utf-8 -*-
require_relative './shain.rb'

# Shunin class inherited form Shain for lesson 3.4
class Shunin < Shain
  def standup
    puts '主任が素早く立ちました。'
  end

  def calculate_salary(kihonkyu)
    kihonkyu * 2 + 1
  end
end
