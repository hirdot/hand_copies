require 'test/unit'

class TestExpense < Test::Unit::TestCase

   def test_deptname
     dept = DepartureStation.new("Shinagawa")
     assert_equal("Shinagawa", dept.name)
   end
end

class DepartureStation
   attr_accessor :name
   def initialize (name)
      @name = name
   end
end
