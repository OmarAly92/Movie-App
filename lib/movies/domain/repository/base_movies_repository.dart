import 'package:clean_arc_movies/movies/domain/entities/movie_entities.dart';
import 'package:clean_arc_movies/movies/domain/usecase/get_movie_details_usecase.dart';
import 'package:clean_arc_movies/movies/domain/usecase/get_recommendation_usecase.dart';
import 'package:dartz/dartz.dart';

import '../../../core/errors/failure.dart';
import '../entities/movie_details_entities.dart';
import '../entities/recommendation_entities.dart';

abstract class BaseMoviesRepository {
  Future<Either<Failure, List<Movie>>> getNowPlayingMovies();

  Future<Either<Failure, List<Movie>>> getPopularMovies();

  Future<Either<Failure, List<Movie>>> getTopRatedMovies();

  Future<Either<Failure, MovieDetails>> getMovieDetails(
      MovieDetailsParameters parameters);

  Future<Either<Failure, List<Recommendation>>> getRecommendation(
      RecommendationParameters parameters);
}
