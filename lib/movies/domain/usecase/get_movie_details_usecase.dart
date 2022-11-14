import 'package:clean_arc_movies/core/base_usecases/base_usecases.dart';
import 'package:clean_arc_movies/core/errors/failure.dart';
import 'package:clean_arc_movies/movies/domain/entities/movie_details_entities.dart';
import 'package:clean_arc_movies/movies/domain/repository/base_movies_repository.dart';
import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';

class GetMovieDetailsUseCase
    extends BaseUseCases<MovieDetails, MovieDetailsParameters> {
  BaseMoviesRepository baseMoviesRepository;

  GetMovieDetailsUseCase(this.baseMoviesRepository);

  @override
  Future<Either<Failure, MovieDetails>> call(
      MovieDetailsParameters parameters) async {
    return await baseMoviesRepository.getMovieDetails(parameters);
  }
}

class MovieDetailsParameters extends Equatable {
  final int movieId;

  const MovieDetailsParameters({required this.movieId});

  @override
  List<Object> get props => [movieId];
}
