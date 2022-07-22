# frozen_string_literal: true

require 'rails_helper'

RSpec.describe Character do
  # input - JSON member response
  # output - member object

  it 'populates Character fields from JSON response' do
    # we got this from postman using a get
    character_data =
    {
    		"_id": "5cf5679a915ecad153ab6906",
    		"allies": [
    			"Ty Lee"
    		],
    		"enemies": [
    			"Appa"
    		],
    		"photoUrl": "https://vignette.wikia.nocookie.net/avatar/images/a/a5/Circus_master.png/revision/latest?cb=20130706153819",
    		"name": "Circus master",
    		"affiliation": "Fire Nation circus"
    	}


    character = Character.new(character_data)

    expect(character).to be_a Character
    expect(character.name).to eq(character_data[:name])
    expect(character.allies).to eq(character_data[:allies])
    expect(character.enemies).to eq(character_data[:enemies])
    expect(character.affiliation).to eq(character_data[:affiliation])
    expect(character.photoUrl).to eq(character_data[:photoUrl])
  end

end
