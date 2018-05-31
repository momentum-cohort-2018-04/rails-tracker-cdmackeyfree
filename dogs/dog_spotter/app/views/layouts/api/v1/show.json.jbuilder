# json.id @dog.id
# json.name @dog.name
# json.breed @dog.breed
# json.age @dog.age
# json.gender @dog.gender
# json.coat_length @dog.coat_length
# json.sound @dog.sound
# json.size @dog.size



json.links do
    json.self api_v1_dogs_url(@dog)
    json.list api_v1_dog_url
    json.update do
      json.method "PUT"
      json.href api_v1_dogs_url(@dog)
    end
    json.delete do
      json.method "DELETE"
      json.href api_v1_dogs_url(@dog)
    end
end

json.data do
    json.id @dog.id
    json.attributes do
        json.name @dog.name
        json.breed @dog.breed
        json.age @dog.age
        json.gender @dog.gender
        json.coat_length @dog.coat_length
        json.sound @dog.sound
        json.size @dog.size
        json.note @dog.note
    end
end
