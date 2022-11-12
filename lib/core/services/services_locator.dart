import 'package:clean_arc_movies/movies/data/datasource/remote_data_source.dart';
import 'package:clean_arc_movies/movies/data/repository/movies_repository.dart';
import 'package:clean_arc_movies/movies/domain/repository/base_movies_repository.dart';
import 'package:clean_arc_movies/movies/domain/usecase/get_now_playing_movies_usecase.dart';
import 'package:clean_arc_movies/movies/domain/usecase/get_popular_movies_usecase.dart';
import 'package:clean_arc_movies/movies/domain/usecase/get_top_rated_moves_usecase.dart';
import 'package:clean_arc_movies/movies/presentation/controller/movies_bloc.dart';
import 'package:get_it/get_it.dart';

final sl = GetIt.instance;

class ServicesLocator {
  void init() {
    /// Bloc
    sl.registerFactory(() => MoviesBloc(sl(),sl(),sl()));

    /// Use Cases
    sl.registerLazySingleton(() => GetNowPlayingMoviesUseCase(sl()));
    sl.registerLazySingleton(() => GetPopularMoviesUseCase(sl()));
    sl.registerLazySingleton(() => GetTopRatedMoviesUseCase(sl()));

    /// Repository
    sl.registerLazySingleton<BaseMoviesRepository>(
        () => MoviesRepository(sl()));

    /// DATA SOURCE
    sl.registerLazySingleton<BaseRemoteDataSource>(
        () => MovieRemoteDataSource());
  }
}
