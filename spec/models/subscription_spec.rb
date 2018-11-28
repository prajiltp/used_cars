require 'rails_helper'

RSpec.describe Subscription, :type => :model do
  it "is valid with valid attributes" do
    expect(Subscription.new(email: "prajil@test.com", category: 'suv' )).to be_valid
  end

  it "is not valid without an email" do
    expect(Subscription.new(email: nil, category: 'suv' )).to_not be_valid
  end

  it "is not valid without a valid email" do
    expect(Subscription.new(email: "nil", category: 'suv' )).to_not be_valid
  end

  it "is not valid without a category" do
    expect(Subscription.new(email: "prajil@test.com", category: nil )).to_not be_valid
  end

end