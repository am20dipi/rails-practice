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

  describe 'Scope' do 
    let (:params) { {last_name: 'Last', first_name: 'First', email: 'sample@example.com'} }
    before(:each) do
      Person.new(params).save
      Person.new(params).save
      Person.new(params.merge(active: false)).save
    end

    it "should return active people" do
      expect(Person.active_people.size).to eq(2)
    end

    it "should return inactive people" do
      expect(Person.inactive_people.size).to eq(1)
    end
  end
end
