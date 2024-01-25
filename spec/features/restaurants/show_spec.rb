require 'rails_helper' 

RSpec.describe 'Restaurant Show page' do 
    before do 
        @arnolds = Restaurant.create!(name: "Arnold's", rating: 3, open: true)
        @bettys = Restaurant.create!(name: "Betty's", rating: 4, open: true)
        visit "/restaurant/#{@arnolds.id}"
    end 

    context 'display' do 
        describe 'restaurant show page' do 
            it 'shows a restaurant with their attributes' do 
                expect(page).to have_content @arnolds.name
                expect(page).to have_content "Rating: #{@arnolds.rating}"
                expect(page).to have_content "This restaurant is currently open: yes"
            end 
        end 
    end 
end 