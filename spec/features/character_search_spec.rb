# frozen_string_literal: true

require 'rails_helper'

RSpec.describe 'Character Search Page' do
  it 'Shows first 25 characters of fire nation' do

    visit "/"
    select 'Fire Nation', from: 'nation'

    click_button 'Search For Members'
    
    expect(current_path).to eq("/search")

    expect(page).to have_content('Total People: 97')
    expect(page).to have_content('Name: Chan (Fire Nation admiral)')
    expect(page).to have_content('Allies: Ozai')
    expect(page).to have_content('Enemies: Earth Kingdom')
    expect(page).to have_content('Affiliation: Fire Nation Army')


    expect(page).to_not have_content('Name: Great Sage')
  end
end
