# frozen_string_literal: true

require 'rails_helper'

RSpec.describe 'CharacterService' do

    it 'returns characters given fire nation', :vcr do
      parsed_json = CharacterService.find_characters("Fire Nation")

      expect(parsed_json).to be_a Array

      character = parsed_json.first

      # expect(character).to include :fullName, :description, :operatingHours
      # expect(character[:fullName]).to be_a(String)
      # expect(character[:description]).to be_a(String)
      # expect(character[:operatingHours]).to be_a(Array)
      # expect(park[:standardHours]).to be_a(Hash)
    end
end
