class Movie {
  int? year, minutes;
  String? title, image, description, rating;
  List<String>? category, directors, writes, actors;

  Movie({
    this.year,
    this.minutes,
    this.title,
    this.image,
    this.description,
    this.rating,
    this.category,
    this.directors,
    this.writes,
    this.actors,
  });

  fromJson(Map<String, dynamic> json) {
    return Movie(year: json['year']);
  }
}

final lucifer = Movie(
  year: 2016,
  minutes: 45,
  title: 'Lucifer',
  image:
      'https://www.themoviedb.org/t/p/w300_and_h450_bestv2/ekZobS8isE6mA53RAiGDG93hBxL.jpg',
  description:
      'Bored and unhappy as the Lord of Hell, Lucifer Morningstar abandoned his throne and retired to Los Angeles, where he has teamed up with LAPD detective Chloe Decker to take down criminals. But the longer hes away from the underworld, the greater the threat that the worst of humanity could escape.',
  rating: 'TV-14',
  category: ['Crime', 'Sci-Fi', 'Fantasy'],
  directors: ['Tom Kapinos'],
  writes: ['Tom Kapinos', 'Tom Kapinos', 'Tom Kapinos'],
  actors: ['Tom Ellis'],
);
