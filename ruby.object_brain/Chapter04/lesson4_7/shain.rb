# coding: utf-8
class Shain
  def initialize(kihonkyu)
    @kihonkyu = kihonkyu
  end

  def print_salary
    puts "私の給料は#{calc_salary}です。"
  end

  def calc_salary
  end
end

class Tanto < Shain
  def calc_salary
    @kihonkyu # 担当は新入社員なので基本給と一緒
  end
end

class Shunin < Shain
  def calc_salary
    @kihonkyu * 2 + 1 # 主任の給料は基本給の2倍+1
  end
end

class Bucho < Shain
  def calc_salary
    @kihonkyu * 3 # 部長の給料は基本給の3倍
  end
end
