# frozen_string_literal: true

require 'rails_helper'

RSpec.describe 'CharacterService' do

    it 'returns characters given fire nation', :vcr do
      parsed_json = CharacterService.find_characters("Fire Nation")

      expect(parsed_json).to be_a Array

      character = parsed_json.first

      # binding.pry

      expect(character).to include :name, :allies, :enemies, :affiliation
      expect(character[:name]).to be_a(String)
      expect(character[:affiliation]).to be_a(String)
      expect(character[:allies]).to be_a(Array)
      expect(character[:enemies]).to be_a(Array)

    end
end
