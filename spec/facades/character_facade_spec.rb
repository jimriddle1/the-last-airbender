# frozen_string_literal: true

require 'rails_helper'

RSpec.describe 'CharacterFacade' do
  it 'gives me an array of character objects' do
    characters = CharacterFacade.find_characters("Fire Nation")

    expect(characters).to be_a Array
    expect(characters).to be_all Character
  end

end
