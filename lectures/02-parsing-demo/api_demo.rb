require "json"
require "open-uri" # used to make HTTP request

# TODO - Let's fetch name and bio from a given GitHub username
# url = "https://api.github.com/users/ssaunier"


# 1. make an HTTP request to visit the page
website_content = URI.open("https://api.github.com/users/canechiagui").read
# p website_content
# 2. Parse the JSON into a ruby object
user = JSON.parse(website_content)

p user["avatar_url"]
