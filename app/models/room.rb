class Room < ApplicationRecord
    belongs_to :house, optional: true
    validates_presence_of :name, :square_footage
end
