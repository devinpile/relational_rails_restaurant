require 'rails_helper'

RSpec.describe 'Shifts Index page' do 
    before do 
        @shift1 = Shift.create!(shift_type: 'Opener', hours: 8, full_staff: true)
        @shift2 = Shift.create!(shift_type: 'Closer', hours: 8, full_staff: true)
        visit '/shifts'
    end

    context 'display' do 
        describe 'Shifts Index page' do 
            it 'lists all shifts' do 
                expect(page).to have_content @shift1.shift_type 
                expect(page).to have_content "Closer"
            end 
        end 
    end 
end