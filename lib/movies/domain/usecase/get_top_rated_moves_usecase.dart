import 'package:clean_arc_movies/movies/domain/entities/movie_entities.dart';
import 'package:dartz/dartz.dart';

import '../../../core/base_usecases/base_usecases.dart';
import '../../../core/errors/failure.dart';
import '../repository/base_movies_repository.dart';

class GetTopRatedMoviesUseCase extends BaseUseCases<List<Movie> , NoParameters> {
  BaseMoviesRepository baseMoviesRepository;

  GetTopRatedMoviesUseCase(this.baseMoviesRepository);

  @override
  Future<Either<Failure, List<Movie>>> call(NoParameters parameters) async {
    return await baseMoviesRepository.getTopRatedMovies();
  }
}
