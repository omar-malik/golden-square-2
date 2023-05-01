require "string_builder"

RSpec.describe StringBuilder do
  it "returns empty string" do
    string_builder = StringBuilder.new
    expect(string_builder.output).to eq ""
    expect(string_builder.size).to eq 0
  end

  it "adds 5 letter word to string" do
    string_builder = StringBuilder.new
    string_builder.add("hello")
    expect(string_builder.output).to eq "hello"
    expect(string_builder.size).to eq 5
  end

end