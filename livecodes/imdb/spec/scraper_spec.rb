require_relative "../scraper"

describe "#fetch_movie_urls" do
  it "returns an array of movies" do
    urls = fetch_movie_urls
    expected = [
      "https://www.imdb.com/title/tt0111161/",  # Notice we don't need the query string.
      "https://www.imdb.com/title/tt0068646/",
      "https://www.imdb.com/title/tt0468569/",
      "https://www.imdb.com/title/tt0071562/",
      "https://www.imdb.com/title/tt0050083/"
    ]
    expect(urls).to eq(expected)
  end
end

describe "#scrape_movie" do
  it "returns a Hash describing a movie" do
    the_dark_knight_url = "https://www.imdb.com/title/tt0468569/"
    movie = scrape_movie(the_dark_knight_url)

    expected = {
      cast: [ "Christian Bale", "Heath Ledger", "Aaron Eckhart" ],
      director: "Christopher Nolan",
      summary: "When a menace known as the Joker wreaks havoc and chaos on the people of Gotham, Batman, James Gordon and Harvey Dent must work together to put an end to the madness.",
      title: "The Dark Knight",
      year: 2008
    }
    expect(movie).to eq(expected)
  end
end
