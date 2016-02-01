require 'rails_helper'

RSpec.describe Drink, type: :model do
  it 'is valid with title' do
    drinky = Drink.new(title: "Maragrita")
    expect(drinky).to be_valid
  end

  it 'is should invalid without title' do
    drinky = Drink.new(title: "")
    expect(drinky).not_to be_valid
  end

  it 'title is too short' do
    drinky = Drink.new(title: "Teq")
    expect(drinky).not_to be_valid
  end

  it 'title is too long' do
    drinky = Drink.new(title: "A"*31)
    expect(drinky).not_to be_valid
  end
end
