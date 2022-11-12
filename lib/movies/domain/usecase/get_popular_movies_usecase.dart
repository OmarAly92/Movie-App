import 'package:clean_arc_movies/movies/domain/entities/movie_entities.dart';
import 'package:dartz/dartz.dart';

import '../../../core/errors/failure.dart';
import '../repository/base_movies_repository.dart';

class GetPopularMoviesUseCase {
  BaseMoviesRepository baseMoviesRepository;

  GetPopularMoviesUseCase(this.baseMoviesRepository);

  Future<Either<Failure, List<Movie>>> execute() async {
    return await baseMoviesRepository.getPopularMovies();
  }
}
