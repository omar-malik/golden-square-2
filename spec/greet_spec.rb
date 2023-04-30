require 'greet'

RSpec.describe "greet method" do
  it "returns a greeting" do
    expect(greet("Person")).to eq "Hello, Person!"
  end
end