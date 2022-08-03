import 'package:flutter/material.dart';
import 'package:movie/models/movie.dart';

class MovieTop extends StatelessWidget {
  final Movie movie;

  const MovieTop({
    Key? key,
    required this.movie,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
          height: 200,
          child: Image.network(movie.image!),
        ),
        Expanded(
          child: Container(
            padding: const EdgeInsets.all(12),
            child: Text(
              movie.description!,
              textAlign: TextAlign.justify,
            ),
          ),
        ),
      ],
    );
  }
}
