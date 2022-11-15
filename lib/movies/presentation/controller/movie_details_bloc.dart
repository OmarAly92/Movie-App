import 'dart:async';

import 'package:clean_arc_movies/core/utils/enums.dart';
import 'package:clean_arc_movies/movies/domain/entities/movie_details_entities.dart';
import 'package:clean_arc_movies/movies/domain/usecase/get_movie_details_usecase.dart';
import 'package:clean_arc_movies/movies/domain/usecase/get_recommendation_usecase.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../domain/entities/recommendation_entities.dart';

part 'movie_details_event.dart';

part 'movie_details_state.dart';

class MovieDetailsBloc extends Bloc<MovieDetailsEvent, MovieDetailsState> {
  MovieDetailsBloc(this.getMovieDetailsUseCase, this.getRecommendationUseCase)
      : super(const MovieDetailsState()) {
    on<GetMovieDetailsEvent>(_getMovieDetails);
    on<GetMovieRecommendationEvent>(_getRecommendation);
  }

  final GetMovieDetailsUseCase getMovieDetailsUseCase;
  final GetRecommendationUseCase getRecommendationUseCase;

  FutureOr<void> _getMovieDetails(
      GetMovieDetailsEvent event, Emitter<MovieDetailsState> emit) async {
    final result =
        await getMovieDetailsUseCase(MovieDetailsParameters(movieId: event.id));
    result.fold(
        (l) => emit(state.copyWith(
              movieDetailsState: RequestState.error,
              movieDetailsMessage: l.message,
            )),
        (r) => emit(state.copyWith(
            movieDetails: r, movieDetailsState: RequestState.loaded)));
  }

  FutureOr<void> _getRecommendation(GetMovieRecommendationEvent event,
      Emitter<MovieDetailsState> emit) async {
    final result =
        await getRecommendationUseCase(RecommendationParameters(event.id));
    result.fold(
        (l) => emit(state.copyWith(
              recommendationState: RequestState.error,
              recommendationMessage: l.message,
            )),
        (r) => emit(state.copyWith(
              recommendation: r,
              recommendationState: RequestState.loaded,
            )));
  }
}
