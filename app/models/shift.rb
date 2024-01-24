class Shift < ApplicationRecord 
    has_many :workers

    validates_presence_of :type
    validates_presence_of :hours
    validates_presence_of :full_staff
end 