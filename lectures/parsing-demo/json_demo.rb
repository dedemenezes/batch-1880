require "json"

# TODO - let's read/write data from beatles.json
filepath = "data/beatles.json"

# READ | Parse

file_content = File.read('data/beatles.json')
# p file_content

beatles = JSON.parse(file_content)
# p beatles['title']
# p beatles['beatles'][1]['first_name']


# WRITE | Storing

band = {
  "title": "The Beatles",
  "beatles": [
    {
      "first_name": "John",
      "last_name": "Lennon",
      "instrument": "Guitar"
    },
    {
      "first_name": "Paul",
      "last_name": "McCartney",
      "instrument": "Bass Guitar"
    },
    {
      "first_name": "George",
      "last_name": "Harrison",
      "instrument": "Lead Guitar"
    },
    {
      "first_name": "Ringo",
      "last_name": "Starr",
      "instrument": "Drums"
    }
  ]
}

File.open('data/beatles.json', 'wb') do |file|
  json_string = JSON.generate(band)
  file.write(json_string)
end
