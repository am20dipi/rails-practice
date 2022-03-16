require 'rails_helper'

RSpec.describe Room, type: :model do
  subject{
    described_class.new(name: "Room", square_footage: 100)
  }

  describe "Associations" do 
    it { should belong_to(:house).without_validating_presence }
  end

  it "is valid with valid attributes" do 
    expect(subject).to be_valid
  end
  it "is not valid without a name" do 
      subject.name = nil
      expect(subject).to_not be_valid
  end
  it "is not valid without a square_footage" do
      subject.square_footage = nil
      expect(subject).to_not be_valid
  end

end
