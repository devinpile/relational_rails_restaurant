require 'rails_helper'

RSpec.describe Shift do 
    describe 'relations' do 
        it { should have_many :workers }
    end 
end 