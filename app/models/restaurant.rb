class Restaurant < ApplicationRecord 
    has_many :dishes 

    validates_presence_of :name
    validates_presence_of :rating
    validates_presence_of :open
end