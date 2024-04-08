import Cocoa

let movies: [String] = [
  "The Godfather", "The Shawshank Redemption", "Pulp Fiction",
  "The Lord of the Rings: The Return of the King", "Forrest Gump", "The Dark Knight", "The Matrix",
  "The Silence of the Lambs", "The Lion King", "The Incredibles", "The Godfather",
]

let uniqueMovies: Set<String> = Set(movies)

print(
  "There are \(movies.count) movies in the array and \(uniqueMovies.count) unique movies in the set."
)
