import 'package:clean_arc_movies/movies/data/model/genres_model.dart';
import 'package:clean_arc_movies/movies/domain/entities/movie_details_entities.dart';

class MovieDetailsModel extends MovieDetails {
  const MovieDetailsModel({
    required super.releaseDate,
    required super.runtime,
    required super.backdropPath,
    required super.genres,
    required super.id,
    required super.title,
    required super.overView,
    required super.voteAverage,
  });

  factory MovieDetailsModel.fromJson(Map<String, dynamic> json) =>
      MovieDetailsModel(
        releaseDate: json['release_date'],
        runtime: json['runtime'],
        backdropPath: json['backdrop_path'],
        genres: List<GenresModel>.from(
            json['genres'].map((e) => GenresModel.fromJson(e))),
        id: json['id'],
        title: json['title'],
        overView: json['overview'],
        voteAverage: json['vote_average'].toDouble(),
      );
}
