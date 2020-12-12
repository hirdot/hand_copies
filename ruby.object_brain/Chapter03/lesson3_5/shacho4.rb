# -*- coding: utf-8 -*-
require_relative 'shain'
require_relative 'bucho'
 
shain = Bucho.new
shain.standup
puts "私の給料は#{shain.calculate_salary(100)}円です。"
