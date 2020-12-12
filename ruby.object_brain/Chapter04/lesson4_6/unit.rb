# coding: utf-8
class Unit
  attr_accessor :name, :contacts

  def intiialize(name, contacts)
    @name, @contacts = name, contacts
  end

  def work
    puts '働きます！'
  end
end

class Shain < Unit
  def work
    puts '社員は働いています'
  end
end

class Bumon < Unit
  attr_accessor :units

  def initialize(name, contacts, untis)
    super
    @units = untis || []
  end

  def work
    puts 'チームワークを発揮します'
  end
end
