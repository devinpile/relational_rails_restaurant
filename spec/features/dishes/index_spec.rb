require 'rails_helper' 

RSpec.describe 'Dishes Index page' do 
    before do 
        @restaurant = Restaurant.create!(name: "Arnolds's", rating: 3, open: true)
        @dish1 = @restaurant.dishes.create!(name: 'Salad', calories: 200, vegan: true)
        @dish2 = @restaurant.dishes.create!(name: 'Soup', calories: 300, vegan: true)
        @dish3 = @restaurant.dishes.create!(name: 'Pasta', calories: 400, vegan: true)

        visit '/dishes'
    end 

    context 'Dishes Index' do 
        describe 'display' do 
            it 'each dish including attributes' do 
                expect(page).to have_content @dish1.name
                expect(page).to have_content @dish2.name
                expect(page).to have_content @dish3.name
            end 
        end
    end
end 