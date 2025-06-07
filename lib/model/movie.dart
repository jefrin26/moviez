class Movie {
  final String imdbID;
  final String title;

  Movie({required this.imdbID, required this.title});

  factory Movie.fromJson(Map<String, dynamic> json) {
    return Movie(
      imdbID: json['imdbID'],
      title: json['title']
    );
  }
}