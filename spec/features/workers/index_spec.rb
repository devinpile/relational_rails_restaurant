require 'rails_helper' 

RSpec.describe 'Workers Index' do 
    before do 
        @shift1 = Shift.create!(shift_type: 'Opener', hours: 8, full_staff: true)
        @worker1 = @shift1.workers.create!(position: 'cook', years_exp: 5, working: true)
        @worker2 = @shift1.workers.create!(position: 'host', years_exp: 1, working: true)
        
        visit '/workers'
    end

    context 'Workers Index page' do 
        describe 'display' do 
            it 'each worker including attributes' do 
                expect(page).to have_content @worker1.id
                expect(page).to have_content @worker1.position
                expect(page).to have_content "Years Experience: 5"
                expect(page).to have_content @worker2.id
                expect(page).to have_content @worker2.position
                expect(page).to have_content "Years Experience: 1"
            end 
        end 
    end 
end 