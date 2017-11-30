require 'rails_helper'
require 'ffaker'

RSpec.describe Contact, type: :model do
  before(:all) do
    @coach = Coach.create(code: 123456)
    @complete_contact = Contact.create(company: 'Microsoft', coach_id: @coach.id)
    @incomplete_contact = Contact.new
    @profile = Profile.create(
                  email: FFaker::Internet.email,
                  profileable_id: @complete_contact.id,
                  profileable_type: @complete_contact.class.name
                )
  end

  it 'is valid with valid attributes' do
    expect(@complete_contact).to be_valid
  end

  it 'is invalid without a coach' do
    expect(@incomplete_contact).to_not be_valid
  end

  it 'returns a profile' do
    expect(@complete_contact.profile).to be_valid
  end

  it 'returns a coach' do
    expect(@complete_contact.coach).to eq @coach
  end
end
