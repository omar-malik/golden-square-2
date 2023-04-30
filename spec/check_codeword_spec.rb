require "check_codeword"

RSpec.describe "check_codeword method" do
  it "checks input 'cool'" do
    expect(check_codeword("cool")).to eq "WRONG!"
  end

  it "checks input 'here'" do
    expect(check_codeword("here")).to eq "Close, but nope."
  end

  it "checks input 'horse'" do
    expect(check_codeword("horse")).to eq "Correct! Come in."
  end
end