require 'rails_helper'

RSpec.describe Coach, type: :model do

  def generate_code
    return Array.new(6){rand 10}.join
  end

  before(:all) do
    @coach = Coach.create
    @coach.code = generate_code
    @profile = Profile.new(email: 'email@test.com', password: 'password')
  end

  it 'is valid with valid attributes' do
    expect(@coach).to be_valid
  end

  it 'has a 6-digit integer code' do
    expect(@coach.code.to_s.length).to eq 6
    expect(@coach.code).to be_a Fixnum
  end

  it 'is invalid without a code' do
    coach = Coach.create
    expect(coach).to_not be_valid
  end
  # it 'returns a profile' do
  #   @profile.profileable = @coach
  #   @profile.save!
  #   expect(@coach.profile).to eq @profile
  # end

  # it 'returns a profile with profileable type of "Coach"'
end
