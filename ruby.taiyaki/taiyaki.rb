require 'minitest/autorun'
require 'date'

class Taiyaki
  attr_reader :anko, :size, :produced_on
  def initialize(anko, size)
    @anko = anko
    @size = size
    @produced_on = Date.today
  end

  def price
    amount = 100
    if anko == '白あん'
      amount += 30
    end

    if size == 'おおきめ'
      amount += 50
    end
    amount
  end

  def to_s
    "あんこ：#{anko}, おおきさ：#{size}"
  end

  def expire_on
    @produced_on + 3
  end

  def expired?(today = Date.today)
    expire_on < today
  end
end

class TaiyakiTest < Minitest::Test
  def test_taiyaki
    taiyaki_1 = Taiyaki.new('あずき', 'ふつう')
    assert_equal 'あずき', taiyaki_1.anko
    assert_equal 'ふつう', taiyaki_1.size
    assert_equal 100,  taiyaki_1.price
    assert_equal "あんこ：あずき, おおきさ：ふつう", taiyaki_1.to_s

    taiyaki_2 = Taiyaki.new('白あん', 'おおきめ')
    assert_equal '白あん', taiyaki_2.anko
    assert_equal 'おおきめ', taiyaki_2.size
    assert_equal 180,  taiyaki_2.price
    assert_equal "あんこ：白あん, おおきさ：おおきめ", taiyaki_2.to_s

    taiyaki_3 = Taiyaki.new('あずき', 'おおきめ')
    assert_equal 150,  taiyaki_3.price
  end

  def test_expired
    taiyaki = Taiyaki.new('あずき', 'ふつう')

    # 製造日？
    assert_equal Date.today, taiyaki.produced_on

    # 消費期限？
    assert_equal Date.today + 3,  taiyaki.expire_on

    # 当日ならfalse
    refute taiyaki.expired?

    # 3日までfalse
    refute taiyaki.expired?(Date.today + 3)

    # 4日からtrue
    assert  taiyaki.expired?(Date.today + 4)
  end
end
