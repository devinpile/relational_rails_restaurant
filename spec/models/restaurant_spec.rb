require 'rails_helper'

RSpec.describe Restaurant do 
    describe 'relations' do 
        it { should have_many :dishes }
    end
end 