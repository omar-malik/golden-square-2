require "present"

RSpec.describe Present do
  it "fails when trying to unwrap a present that hasn't been wrapped" do
    present = Present.new
    expect { present.unwrap() }.to raise_error "No contents have been wrapped."
  end

  it "wraps a present and then unwraps it" do
    present = Present.new
    present.wrap("perfume")
    expect(present.unwrap).to eq "perfume"
  end

  it "fails when trying to wrap a present already wrapped" do
    present = Present.new
    present.wrap("perfume")
    expect { present.wrap("clothes") }.to raise_error "No contents have been wrapped"
  end
end