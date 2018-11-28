require 'rails_helper'

RSpec.describe Car, :type => :model do
  it "is valid with valid attributes" do
    expect(Car.new(year_of_manufacture: 2007, creator_email: 'prajil@test.com',
                   make: 'suzki', model: 'baleno', price: '700000' )).to be_valid
  end

  it "is not valid without a valid creator_email" do
    expect(Car.new(year_of_manufacture: 2007, creator_email: 'prajil',
                   make: 'suzki', model: 'baleno', price: '700000' )).to_not be_valid
  end

  it "is not valid without a creator_email" do
    expect(Car.new(year_of_manufacture: 2007, creator_email: nil,
                   make: 'suzki', model: 'baleno', price: '700000' )).to_not be_valid
  end

  it "is not valid without a make" do
    expect(Car.new(year_of_manufacture: 2007, creator_email: 'prajil@test.com',
                   make: nil, model: 'baleno', price: '700000' )).to_not be_valid
  end

  it "is not valid without a model" do
    expect(Car.new(year_of_manufacture: 2007, creator_email: 'prajil@test.com',
                   make: 'suzki', model: nil, price: '700000' )).to_not be_valid
  end

  it "is not valid without a price" do
    expect(Car.new(year_of_manufacture: 2007, creator_email: 'prajil@test.com',
                   make: 'suzki', model: 'baleno', price: nil )).to_not be_valid
  end

  it "is not valid without a year_of_manufacture" do
    expect(Car.new(year_of_manufacture: nil, creator_email: 'prajil@test.com',
                   make: 'suzki', model: 'baleno', price: '700000' )).to_not be_valid
  end

end