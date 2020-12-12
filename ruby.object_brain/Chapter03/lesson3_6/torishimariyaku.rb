require_relative 'shain'
class Torishimariyaku < Shain
  def calculate_salary(kihonkyu)
    kihonkyu * 4 + 2
  end
end
