require "password_checker"

RSpec.describe PasswordChecker do
  it "fails: password too short" do
    password_checker = PasswordChecker.new
    expect { password_checker.check("1234") }.to raise_error "Invalid password, must be 8+ characters."
  end

  it "passes: password is 8 characters" do
    password_checker = PasswordChecker.new
    expect(password_checker.check("12345678")).to eq true
  end

  it "passes: password more than 8 characters" do
    password_checker = PasswordChecker.new
    expect(password_checker.check("123456789")).to eq true
  end
end