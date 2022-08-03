import 'package:flutter/material.dart';
import 'package:movie/models/movie.dart';

class MovieBottom extends StatelessWidget {
  final Movie movie;

  const MovieBottom(this.movie, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        RowDescription(label: 'Directores', names: movie.directors!),
        RowDescription(label: 'Escritores', names: movie.writes!),
        RowDescription(label: 'Actores', names: movie.actors!),
      ],
    );
  }
}

class RowDescription extends StatelessWidget {
  final String label;
  final List<String> names;

  const RowDescription({Key? key, required this.label, required this.names})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        children: [
          Text(
            '$label:',
            style: const TextStyle(
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(
            width: 10,
          ),
          Text(
            names.join(', '),
          ),
        ],
      ),
    );
  }
}
