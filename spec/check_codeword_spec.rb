require "check_codeword"

RSpec.describe "check_codeword method" do
  it "return wrong" do
    expect(check_codeword("cool")).to eq "WRONG!"
  end

  it "returns close" do
    expect(check_codeword("here")).to eq "Close, but nope."
  end

  it "returns correct" do
    expect(check_codeword("horse")).to eq "Correct! Come in."
  end
end