class Worker < ApplicationRecord 
    belongs_to :shift

    validates_presence_of :position
    validates_presence_of :years_exp
    validates_presence_of :working
end 