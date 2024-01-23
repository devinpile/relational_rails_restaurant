require 'rails_helper'

describe Restaurant do 
    describe 'relations' do 
        it { should have_many :dishes }
    end
end 