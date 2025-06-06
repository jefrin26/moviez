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
}
