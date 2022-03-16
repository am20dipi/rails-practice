require 'rails_helper'

RSpec.describe House, type: :model do
  subject {
    described_class.new(address: '190 demont street',
                        state: "North Carolina",
                        city: "Lorem City",
                        zip_code: 10011,
                        household_members: 4
    )
  }
  describe "Associations" do 
    it { should belong_to(:user).without_validating_presence } 
  end

  it "is valid with valid attributes" do 
    expect(subject).to be_valid
  end
  it "is not valid without a address" do 
      subject.address = nil
      expect(subject).to_not be_valid
  end
  it "is not valid without a city" do
      subject.city = nil
      expect(subject).to_not be_valid
  end
  it "is not valid without a zip_code" do 
      subject.zip_code = nil
      expect(subject).to_not be_valid
  end
  it "is not valid without a state" do
      subject.state = nil
      expect(subject).to_not be_valid
  end
  it "is not valid without household_members" do
    subject.household_members = nil
    expect(subject).to_not be_valid
  end
  
end
