class House < ApplicationRecord
    belongs_to :user, optional: true
    has_many :rooms
    validates_presence_of :address, :city, :state, :zip_code, :household_members
end
