require 'rails_helper' 

RSpec.describe 'Restaurant Index Page' do
    before do 
        @arnolds = Restaurant.create!(name: "Arnold's", rating: 3, open: true)
        @bettys = Restaurant.create!(name: "Betty's", rating: 4, open: true)

        visit '/restaurants'
    end 

    context 'display' do 
        describe 'restaurants index' do 
            it 'lists all restaurants' do
                expect(page).to have_content @arnolds.name
                expect(page).to have_content "Betty's"
            end
        end 
    end 
end