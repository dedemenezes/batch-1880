require "csv"

# TODO - let's read/write data from beatles.csv
filepath = "data/beatles.csv"

# READ | Parse

CSV.foreach(filepath, headers: :first_row, header_converters: :symbol) do |row|
  # p row
  # puts "#{row["First Name"]} #{row["Last Name"]} plays #{row["Instrument"]}"
  puts "#{row[:first_name]} #{row[:last_name]} plays #{row[:instrument]}"

  #=> John Lennon plays Guitar
  #=> Paul McCartney plays Bass Guitar
end

# WRITE | Store
# wb -> writing binary

CSV.open("data/beatles.csv", 'wb') do |csv|
  # We can ONLY store an ARRAY OF STRING
  csv << ["First Name", "Last Name", "Instrument"]
  csv << ["John","Lennon","Guitar"]
  csv << ["Paul","McCartney","Bass Guitar"]
  csv << ["George","Harrison","Lead Guitar"]
  csv << ["Ringo","Starr","Drums"]
end
