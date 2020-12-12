# -*- coding: utf-8 -*-
require_relative 'shain'
require_relative 'tanto'
require_relative 'shunin'
require_relative 'bucho'

shain = Tanto.new
shain.standup
puts "私の給料は#{shain.calculate_salary(100)}円です。"


shain = Shunin.new
shain.standup
puts "私の給料は#{shain.calculate_salary(100)}円です。"
 
shain = Bucho.new
shain.standup
puts "私の給料は#{shain.calculate_salary(100)}円です。"

