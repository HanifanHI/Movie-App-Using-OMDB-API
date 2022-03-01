class Movie {
  late String imageUrl;
  late String title;
  late String type;
  late String year;

  Movie({
    required this.imageUrl,
    required this.title,
    required this.type,
    required this.year,
  });

  factory Movie.fromJson(Map<String, dynamic> json) {
    return Movie(
      imageUrl: json['Poster'],
      title: json['Title'],
      type: json['Type'],
      year: json['Year'],
    );
  }
}
