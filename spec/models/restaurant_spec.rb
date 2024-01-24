require 'rails_helper'

RSpec.describe Restaurant do 
    describe 'relations' do 
        it { should have_many :dishes }
    end

    describe 'validations' do 
        it { should validate_presence_of :name }
        it { should validate_presence_of :rating }
        it { should validate_presence_of :open }
    end 
end