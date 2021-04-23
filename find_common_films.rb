require "open-uri"
require "json"

def swapi_query(id) 
    response = open("https://swapi.dev/api/people/#{id}/.json").read
    json = JSON.parse(response)
end

def character_queries(character_ids)
    data = []
    for id in character_ids do
        data.push(swapi_query(id)["films"])
    end
    data
end

def find_common_films(character_ids)
    return [] if character_ids.size === 0

    character_data = character_queries(character_ids)
    
    # reduce to one array with common film urls
    film_urls = character_data.reduce{ |acc, films| acc & films }
    return "No common films" if film_urls.size === 0
    film_urls
end