require "report_length" 

RSpec.describe "report_length method" do
  it "returns 5" do
    expect(report_length("hello")).to eq "This string was 5 characters long."
  end

  it "returns 11" do
    expect(report_length("spectacular")).to eq "This string was 11 characters long."
  end
end