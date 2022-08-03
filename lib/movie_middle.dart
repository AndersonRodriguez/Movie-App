import 'package:flutter/material.dart';
import 'package:movie/models/movie.dart';

class MovieMiddle extends StatelessWidget {
  final Movie movie;

  const MovieMiddle({Key? key, required this.movie}) : super(key: key);

  static const SizedBox sizedBox = SizedBox(width: 10);

  static const BorderSide border = BorderSide(color: Colors.black, width: 1.5);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        border: Border(
          top: border,
          bottom: border,
        ),
      ),
      // margin: const EdgeInsets.only(top: 8.0),
      padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 3.0),
      child: Row(
        children: [
          Text('${movie.year!}'),
          sizedBox,
          Text(movie.rating!),
          sizedBox,
          Text('${movie.minutes} min'),
          sizedBox,
          Expanded(
            child: Text(
              movie.category!.join(', '),
              textAlign: TextAlign.end,
            ),
          ),
        ],
      ),
    );
  }
}
