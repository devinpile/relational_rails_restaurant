require 'rails_helper'

RSpec.describe Worker do 
    describe 'relations' do 
        it { should belong_to :shift }
    end 

    describe 'validations' do 
        it { should validate_presence_of :position }
        it { should validate_presence_of :years_exp }
        it { should validate_presence_of :working }
    end
end 