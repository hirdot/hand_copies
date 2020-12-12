# coding: utf-8
require_relative 'shain'

shain = Shain.new
shain.yakushoku = Tanto.new
puts "担当の給料は#{shain.calculate_salary(100)}です。"
shain.up
puts "昇進して主任になると給料は#{shain.calculate_salary(100)}です。"
shain.down
puts "降格してしまうと給料は#{shain.calculate_salary(100)}です。"
