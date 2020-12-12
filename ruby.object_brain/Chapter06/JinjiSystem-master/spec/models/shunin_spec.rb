require 'rails_helper'

describe Tanto do
  #主任という役職を返す
  it "return yakushoku as '主任'" do
    shunin = Shunin.new
    expect(shunin.yakushoku).to eq '主任'
  end

  it "return salary of Tanto" do
    shunin = Shunin.new(kihonkyu: 120000)
    expect(shunin.salary).to eq 241000
  end
end
