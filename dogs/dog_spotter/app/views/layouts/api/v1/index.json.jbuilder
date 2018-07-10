json.array! @dogs do |dog|
    json.extract! dog, :id, :name, :breed, :sound, :coat_length, :age, :gender, :size, :note
  end