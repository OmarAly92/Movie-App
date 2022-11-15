import 'package:clean_arc_movies/core/base_usecases/base_usecases.dart';
import 'package:clean_arc_movies/core/errors/failure.dart';
import 'package:clean_arc_movies/movies/domain/entities/recommendation_entities.dart';
import 'package:clean_arc_movies/movies/domain/repository/base_movies_repository.dart';
import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';

class GetRecommendationUseCase
    extends BaseUseCases<List<Recommendation>, RecommendationParameters> {
  final BaseMoviesRepository baseMoviesRepository;

  GetRecommendationUseCase(this.baseMoviesRepository);

  @override
  Future<Either<Failure, List<Recommendation>>> call(
      RecommendationParameters parameters) async {
    return await baseMoviesRepository.getRecommendation(parameters);
  }
}

class RecommendationParameters extends Equatable {
  final int id;

  const RecommendationParameters(this.id);

  @override
  List<Object> get props => [id];
}
