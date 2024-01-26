require 'rails_helper' 

RSpec.describe 'Shift Show page' do 
    before do 
        @morning = Shift.create!(shift_type: 'Morning', hours: 8, full_staff: true)
        @evening = Shift.create!(shift_type: 'Evening', hours: 8, full_staff: true)
        visit "/shifts/#{@morning.id}"
    end

    context 'display' do 
        describe 'Shift show page' do 
            it 'shows shift type, hours, and if it is fully staffed' do 
                expect(page).to have_content "Morning" 
                expect(page).to_not have_content "Evening"
                expect(page).to have_content "Hours: #{@morning.hours}"
                expect(page).to have_content "Fully Staffed: yes"
            end 
        end
    end
end 