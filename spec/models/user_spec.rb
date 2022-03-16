require 'rails_helper'

RSpec.describe User, :type => :model do 
    subject {
        described_class.new(name: 'Anything',
                            email: "Lorem ipsum",
                            city: "Lorem ipsum",
                            age: 100
        )
    }
    it "is valid with valid attributes" do 
        expect(subject).to be_valid
    end
    it "is not valid without a name" do 
        subject.name = nil
        expect(subject).to_not be_valid
    end
    it "is not valid without a email" do
        subject.email = nil
        expect(subject).to_not be_valid
    end
    it "is not valid without a age" do 
        subject.age = nil
        expect(subject).to_not be_valid
    end
    it "is not valid without a city" do
        subject.city = nil
        expect(subject).to_not be_valid
    end
end

=begin 
   The purpose of the first spec is to make it obvious what is needed to make a valid object of the Auction class. 
=end

