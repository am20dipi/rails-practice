class User < ApplicationRecord
    validates_presence_of :name
    validates_presence_of :email
    validates_presence_of :age
    validates_presence_of :city
end
