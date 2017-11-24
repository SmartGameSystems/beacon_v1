require 'rails_helper'

RSpec.describe Client, type: :model do
  before(:all) do
    @client = Client.new
  end

  it "is valid with valid attributes" do
    expect(@client).to be_valid
  end

  it "has a default unreads value of 0" do
    expect(@client.unreads).to eq 0
  end

  it "is invalid if it has fewer than zero unreads" do
    @client.unreads = -1
    expect(@client).to_not be_valid
  end
  
  it "is invalid without a coach"
  it "returns a profile"
  it "returns a coach"
end
