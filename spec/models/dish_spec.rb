require 'rails_helper'

RSpec.describe Dish do 
    describe 'relations' do 
        it { should belong_to :restaurant }
    end

    describe 'validations' do 
        it { should validate_presence_of :name }
        it { should validate_presence_of :calories }
        it { should validate_presence_of :vegan }
    end
end 