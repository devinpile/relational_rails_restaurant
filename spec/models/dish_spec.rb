require 'rails_helper'

RSpec.describe Dish do 
    describe 'relations' do 
        it { should belong_to :restaurant }
    end
end 