import 'package:flutter/material.dart';
import 'package:movie/models/movie.dart';
import 'package:movie/movie_bottom.dart';
import 'package:movie/movie_middle.dart';
import 'package:movie/movie_top.dart';

void main() {
  runApp(Screen());
}

class Screen extends StatelessWidget {
  final Movie movie = lucifer;

  Screen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'App de pelicula',
      home: Scaffold(
        appBar: AppBar(
          title: Text(movie.title!),
        ),
        body: Column(
          children: [
            MovieTop(movie: movie),
            MovieMiddle(movie: movie),
            MovieBottom(movie),
          ],
        ),
      ),
    );
  }
}
