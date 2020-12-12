require 'rails_helper'

describe Bucho do
  # 部長という役職を返す
  it "return yakushoku as '部長'" do
    bucho = Bucho.new
    expect(bucho.yakushoku).to eq '部長'
  end

  it "return salary of Tanto" do
    bucho = Bucho.new(kihonkyu: 200000)
    expect(bucho.salary).to eq 600000
  end
end
