require "gratitudes"

RSpec.describe Gratitudes do
  it "initializes empty string" do
    gratitudes = Gratitudes.new
    expect(gratitudes.format).to eq "Be grateful for: "
  end

  it "adds a string" do
    gratitudes = Gratitudes.new
    gratitudes.add("health")
    expect(gratitudes.format).to eq "Be grateful for: health"
  end

  it "adds 2 strings" do
    gratitudes = Gratitudes.new
    gratitudes.add("health")
    gratitudes.add("knowledge")
    expect(gratitudes.format).to eq "Be grateful for: health, knowledge"
  end
end