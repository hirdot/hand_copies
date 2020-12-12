# coding: utf-8
require_relative 'torishimariyaku'

describe Torishimariyaku do
  let(:torishimariyaku) { Torishimariyaku.new }

  example '取締役の給料は基本給の4倍+2、基本給が100なら給料は402' do
    expect(torishimariyaku.calculate_salary(100)).to eq 402
  end
end
