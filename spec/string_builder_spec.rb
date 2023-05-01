require "string_builder"

RSpec.describe StringBuilder do
  it "returns empty string" do
    string_builder = StringBuilder.new
    expect(string_builder.output).to eq ""
  end
  
end