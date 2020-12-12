# coding: utf-8

require_relative 'shain_factory2'

describe 'Refactored ShainFactory' do
  let(:shain_factory) { ShainFactory.new }

  example 'Tantoオブジェクトを生成しているかどうかをチェックする' do
    expect(shain_factory.create('Tanto', 100)).to be_an_instance_of Tanto
  end

  example 'Shuninオブジェクトを生成しているかどうかをチェックする' do
    expect(shain_factory.create('Shunin', 100)).to be_an_instance_of Shunin
  end

  example 'Buchoオブジェクトを生成しているかどうかをチェックする' do
    expect(shain_factory.create('Bucho', 100)).to be_an_instance_of Bucho
  end

  example 'Torishimariyakuオブジェクトを生成しているかどうかをチェックする' do
    expect(shain_factory.create('Torishimariyaku', 100)).to be_an_instance_of Torishimariyaku
  end
end
