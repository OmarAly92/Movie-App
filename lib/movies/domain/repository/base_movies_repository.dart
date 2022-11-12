import 'package:clean_arc_movies/movies/domain/entities/movie_entities.dart';
import 'package:dartz/dartz.dart';

import '../../../core/errors/failure.dart';

abstract class BaseMoviesRepository {
  Future<Either<Failure, List<Movie>>> getNowPlayingMovies();

  Future<Either<Failure, List<Movie>>> getPopularMovies();

  Future<Either<Failure, List<Movie>>> getTopRatedMovies();
}
