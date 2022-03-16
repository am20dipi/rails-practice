require 'rails_helper'

RSpec.describe Person, type: :model do
  describe 'Validations' do 
    it "ensures first name presence" do
      person = Person.new(last_name: 'Last', email: 'sample@example.com').save
      expect(person).to eq(false)
    end
    it "ensures last name presence" do
      person = Person.new(first_name: 'First', email: 'sample@example.com').save
      expect(person).to eq(false)
    end
    it "ensures email presence" do
      person = Person.new(last_name: 'Last', first_name: 'First').save
      expect(person).to eq(false)
    end
    it "should save successfully" do 
      person = Person.new(last_name: 'Last', first_name: 'First', email: 'sample@example.com').save
      expect(person).to eq(true)
    end
  end

  describe 'Scope' do end
end
