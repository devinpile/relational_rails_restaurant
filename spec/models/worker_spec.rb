require 'rails_helper'

RSpec.describe Worker do 
    describe 'relations' do 
        it { should belong_to :shift }
    end 
end 