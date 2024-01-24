require 'rails_helper'

RSpec.describe Shift do 
    describe 'relations' do 
        it { should have_many :workers }
    end 

    describe 'validations' do 
        it { should validate_presence_of :shift_type }
        it { should validate_presence_of :hours }
        it { should validate_presence_of :full_staff }
    end  
end 