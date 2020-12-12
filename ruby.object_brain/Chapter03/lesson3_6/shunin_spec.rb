# coding: utf-8
require_relative 'shunin'

describe Shunin do
  let(:shunin) { Shunin.new }

  example '主任の給料は基本給の2倍+1、基本給が100なら給料は201' do
    expect(shunin.calculate_salary(100)).to eq 201
  end
end
