require "counter"

RSpec.describe Counter do
  it "adds 1 to the count" do
    counter = Counter.new
    counter.add(1)
    expect(counter.report).to eq "Counted to 1 so far."
  end

  it "adds 3 to the count" do
    counter  = Counter.new
    counter.add(3)
    expect(counter.report).to eq "Counted to 3 so far."
  end

  it " adds 10 then adds another 10" do
    counter = Counter.new
    counter.add(10)
    expect(counter.report).to eq "Counted to 10 so far."
    counter.add(10)
    expect(counter.report).to eq "Counted to 20 so far."
  end
end