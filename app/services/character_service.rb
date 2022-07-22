
class CharacterService
  def self.find_characters(nation)
    response = connection.get("characters?affiliation=#{nation}&perPage=497")
    body = JSON.parse(response.body, symbolize_names: true)
    # binding.pry
    # body[:data]
  end

  def self.connection
    Faraday.new(url: 'https://last-airbender-api.herokuapp.com/api/v1/')
  end
end
