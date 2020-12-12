# -*- coding: utf-8 -*-
require_relative 'shain'
require_relative 'tanto'
require_relative 'shunin'
require_relative 'bucho'

shain = Tanto.new
puts shain.standup
puts "私の給料は#{shain.calculate_salary(100)}円です。"

shain = Shunin.new
puts shain.standup
puts "私の給料は#{shain.calculate_salary(100)}円です。"

shain = Bucho.new
puts shain.standup
puts "私の給料は#{shain.calculate_salary(100)}円です。"
