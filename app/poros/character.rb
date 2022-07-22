class Character
  attr_reader :name, :allies, :enemies, :affiliation, :photoUrl

  def initialize(character_data)
    @data = character_data
    @name = character_data[:name]
    @allies = character_data[:allies]
    @enemies = character_data[:enemies]
    @affiliation = character_data[:affiliation]
    @photoUrl = character_data[:photoUrl]
  end

  def print_allies
    if @allies.count == 0
      "None"
    else
      @allies.join(", ")
    end
  end

  def print_enemies
    if @enemies.count == 0
      "None"
    else
      @enemies.join(", ")
    end
  end

end
