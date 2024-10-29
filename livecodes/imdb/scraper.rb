require 'nokogiri'
require 'open-uri'

USER_AGENT = 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36'

# 1. Scrape the top five movies URL's
def fetch_movie_urls
  url = 'https://www.imdb.com/chart/top/'
  # 1. Make an HTTP request to the url (open-uri)
  html_file = URI.open(url, { 'User-Agent' => USER_AGENT }).read

  # 2. Parse the HTML response using Nokogiri
  html_doc = Nokogiri::HTML.parse(html_file)

  # 3. Inspect the browser to find a way to scrape the information you want (CSS SELECTOR)
  # 4. USe nokogiri method #search
  movies = []

  html_doc.search(".ipc-title.ipc-title--base.ipc-title--title.ipc-title-link-no-icon.ipc-title--on-textPrimary.sc-a69a4297-2.bqNXEn.cli-title.with-margin a")[0..4].map do |element|
    url = element.attribute('href').value
    # We will use URI to build the WHOLE MOVIE URL
    movie_url = URI.parse(url)
    # p movie_url
    # scheme (http || https)
    # host (www.imdb.com)
    # query string (?ingredient=chocolate)
    movie_url.scheme = 'https'
    movie_url.host = 'www.imdb.com'
    movie_url.query = nil
    movies << movie_url.to_s
  end

  # return an array with 5 movie_url's
  movies
end

# 2. Scrape the information for an specific movie (url)
def scrape_movie(movie_url)
  # 1. Make an HTTP request to the url (open-uri)
  html_file = URI.open(movie_url, { 'User-Agent' => USER_AGENT, 'Accept-Language' => 'en-US' }).read

  # 2. Parse the HTML response using Nokogiri
  html_doc = Nokogiri::HTML.parse(html_file)

  # 3. Inspect the browser to find a way to scrape the information you want (CSS SELECTOR)
  # 4. USe nokogiri method #search
  director_name = html_doc.search('.ipc-metadata-list__item:contains("Director") a').first.text
  stars = []
  html_doc.search('.ipc-metadata-list__item:contains("Stars") div a').each do |element|
    stars << element.text
  end
  cast = stars.uniq

  summary = html_doc.search('.sc-fbb3c9a4-0.liSKpp').first.text
  year = html_doc.search('.ipc-inline-list.ipc-inline-list--show-dividers.sc-ec65ba05-2.joVhBE.baseAlt li:first-child').first.text
  title = html_doc.search('h1').first.text

  {
    cast: cast,
    year: year.to_i,
    title: title,
    summary: summary,
    director: director_name
  }
end
