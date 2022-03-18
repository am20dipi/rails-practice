class Person < ApplicationRecord
    validates_presence_of :first_name, :last_name, :email

    scope :active_people, -> { where(active: true)}
    scope :inactive_people, -> { where(active: false)}
end
