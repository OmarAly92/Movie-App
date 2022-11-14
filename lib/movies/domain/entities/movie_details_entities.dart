import 'package:equatable/equatable.dart';

import 'genres_entities.dart';

class MovieDetails extends Equatable {
  final String backdropPath;
  final List<Genres> genres;
  final int id;
  final String overView;
  final String releaseDate;
  final int runtime;
  final String title;
  final double voteAverage;

  const MovieDetails({
    required this.releaseDate,
    required this.runtime,
    required this.backdropPath,
    required this.genres,
    required this.id,
    required this.title,
    required this.overView,
    required this.voteAverage,
  });

  @override
  List<Object> get props => [
        backdropPath,
        genres,
        id,
        overView,
        releaseDate,
        runtime,
        title,
        voteAverage,
      ];
}
