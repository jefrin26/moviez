class MovieDetail {
  final String imdbID;
  final String title;
  final String plot;
  final String director;
  final List<String> actors;
  final String poster;

  MovieDetail({
    required this.imdbID,
    required this.title,
    required this.plot,
    required this.director,
    required this.actors,
    required this.poster,
  });

  factory MovieDetail.fromJson(Map<String, dynamic> json) {
    return MovieDetail(
      imdbID: json['imdbID'],
      title: json['Title'],
      plot: json['Plot'],
      director: json['Director'],
      actors: json['Actors'],
      poster: json['Poster'],
    );
  }
}
