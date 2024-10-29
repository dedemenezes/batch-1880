require "open-uri"
require "nokogiri"

# Let's scrape recipes from https://www.bbcgoodfood.com

puts 'Hey tell me an ingredient:'
ingredient = gets.chomp

# 1. Make an HTTP request to visit and read the content
website_content = URI.open("https://www.bbcgoodfood.com/search?q=#{ingredient}").read

# p website_content
# 2. Parse into an ruby object

document = Nokogiri::HTML.parse(website_content)
# p document

# 3. Search for the element you want to scrape
document.search('a.link.d-block h2.heading-4').each do |element|
  p element.text
end
