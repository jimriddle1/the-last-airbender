class CharacterFacade
  def self.find_characters(nation)
    character_data = CharacterService.find_characters(nation)

    character_data.map do |character_json|
      Character.new(character_json)
    end
  end
  
end
