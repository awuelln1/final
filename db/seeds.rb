# Deletes everything from the database so that you start fresh
puts "Deleting all records from the database..."
City.delete_all
Sense.delete_all
Attraction.delete_all
Profile.delete_all
Specific.delete_all

# Create the cities
puts "Creating cities..."
newyork = City.create(city_name: "New York", city_description: "Big Apple")
chicago = City.create(city_name: "Chicago", city_description: "City of Broad Shoulders")
orlando = City.create(city_name: "Orlando", city_description: "Mickey Mouse World!")
philadelphia = City.create(city_name: "Philadelphia", city_description: "City of Brotherly Love")
lasvegas = City.create(city_name: "Las Vegas", city_description: "Vegas, Baby!")

# Create the senses
puts "Creating senses..."
see = Sense.create(sense_name: "See")
smell = Sense.create(sense_name: "Smell")
taste = Sense.create(sense_name: "Taste")
touch = Sense.create(sense_name: "Touch")
hear = Sense.create(sense_name: "Hear")

# Create the attractions
puts "Creating attractions..."
liberty = Attraction.create(attraction_name: "Liberty Bell")
philly = Attraction.create(attraction_name: "Philly Smell")
cheesesteak = Attraction.create(attraction_name: "Cheese Steak")
philly2 = Attraction.create(attraction_name: "Philly Touch")
philly3 = Attraction.create(attraction_name: "Philly Sound")

willis = Attraction.create(attraction_name: "Willis Tower Skydeck")
garrett = Attraction.create(attraction_name: "Garrett Mix Popcorn")
gibsons = Attraction.create(attraction_name: "Gibson's Steak")
ivy = Attraction.create(attraction_name: "Wrigley Field Ivy")
el = Attraction.create(attraction_name: "El Train")

ferry = Attraction.create(attraction_name: "New York Skyline from Staten Island Ferry")
ny = Attraction.create(attraction_name: "NY Smell")
cronut = Attraction.create(attraction_name: "Cronut")
ny2 = Attraction.create(attraction_name: "NY Touch")
broadway = Attraction.create(attraction_name: "Lion King on Broadway")

bellagio = Attraction.create(attraction_name: "Bellagio Fountains")
lv = Attraction.create(attraction_name: "LV Smell")
holsteins = Attraction.create(attraction_name: "Holstein's Gold Standard")
felt = Attraction.create(attraction_name: "Blackjack Felt")
allin = Attraction.create(attraction_name: "World Series of Poker All-In")

fireworks = Attraction.create(attraction_name: "Epcot Fireworks")
soarin = Attraction.create(attraction_name: "Soarin' Scents")
california = Attraction.create(attraction_name: "Harry Potter World Butter Beer")
orlando = Attraction.create(attraction_name: "Orlando Touch")
small = Attraction.create(attraction_name: "It's a Small World After All")

# Create the profiles
puts "Creating profiles..."
adventurer = Profile.create(profile_name: "Adventurer")
historian = Profile.create(profile_name: "Historian")
techy = Profile.create(profile_name: "Techy")
zen = Profile.create(profile_name: "Zen Master")
lifestyler = Profile.create(profile_name: "Lifestyler")

puts "Creating specific sense attractions..."

# Create the specific sense attractions for Philadelphia
Specific.create(city_id: philadelphia.id, sense_id: see.id, profile_id: lifestyler.id, attraction_id: liberty.id)
Specific.create(city_id: philadelphia.id, sense_id: smell.id, profile_id: lifestyler.id, attraction_id: philly.id)
Specific.create(city_id: philadelphia.id, sense_id: taste.id, profile_id: lifestyler.id, attraction_id: cheesesteak.id)
Specific.create(city_id: philadelphia.id, sense_id: touch.id, profile_id: lifestyler.id, attraction_id: philly2.id)
Specific.create(city_id: philadelphia.id, sense_id: hear.id, profile_id: lifestyler.id, attraction_id: philly3.id)

# Create the specific sense attractions for Chicago
Specific.create(city_id: chicago.id, sense_id: see.id, profile_id: lifestyler.id, attraction_id: willis.id)
Specific.create(city_id: chicago.id, sense_id: smell.id, profile_id: lifestyler.id, attraction_id: garrett.id)
Specific.create(city_id: chicago.id, sense_id: taste.id, profile_id: lifestyler.id, attraction_id: gibsons.id)
Specific.create(city_id: chicago.id, sense_id: touch.id, profile_id: lifestyler.id, attraction_id: ivy.id)
Specific.create(city_id: chicago.id, sense_id: hear.id, profile_id: lifestyler.id, attraction_id: el.id)

# Create the specific sense attractions for New York
Specific.create(city_id: newyork.id, sense_id: see.id, profile_id: lifestyler.id, attraction_id: ferry.id)
Specific.create(city_id: newyork.id, sense_id: smell.id, profile_id: lifestyler.id, attraction_id: ny.id)
Specific.create(city_id: newyork.id, sense_id: taste.id, profile_id: lifestyler.id, attraction_id: cronut.id)
Specific.create(city_id: newyork.id, sense_id: touch.id, profile_id: lifestyler.id, attraction_id: ny2.id)
Specific.create(city_id: newyork.id, sense_id: hear.id, profile_id: lifestyler.id, attraction_id: broadway.id)

# Create the specific sense attractions for Las Vegas
Specific.create(city_id: lasvegas.id, sense_id: see.id, profile_id: lifestyler.id, attraction_id: bellagio.id)
Specific.create(city_id: lasvegas.id, sense_id: smell.id, profile_id: lifestyler.id, attraction_id: lv.id)
Specific.create(city_id: lasvegas.id, sense_id: taste.id, profile_id: lifestyler.id, attraction_id: holsteins.id)
Specific.create(city_id: lasvegas.id, sense_id: touch.id, profile_id: lifestyler.id, attraction_id: felt.id)
Specific.create(city_id: lasvegas.id, sense_id: hear.id, profile_id: lifestyler.id, attraction_id: allin.id)

# Create the specific sense attractions for Orlando
Specific.create(city_id: orlando.id, sense_id: see.id, profile_id: lifestyler.id, attraction_id: fireworks.id)
Specific.create(city_id: orlando.id, sense_id: smell.id, profile_id: lifestyler.id, attraction_id: soarin.id)
Specific.create(city_id: orlando.id, sense_id: taste.id, profile_id: lifestyler.id, attraction_id: california.id)
Specific.create(city_id: orlando.id, sense_id: touch.id, profile_id: lifestyler.id, attraction_id: orlando.id)
Specific.create(city_id: orlando.id, sense_id: hear.id, profile_id: lifestyler.id, attraction_id: small.id)

puts "There are now #{City.count} cities, #{Attraction.count} attractions, and #{Specific.count} specific sense attractions in the database."
