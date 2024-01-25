class Shift < ApplicationRecord 
    has_many :workers

    validates_presence_of :shift_type
    validates_presence_of :hours
    validates_presence_of :full_staff

    def fully_staffed
        self.full_staff ? 'yes' : 'no'
    end
end 