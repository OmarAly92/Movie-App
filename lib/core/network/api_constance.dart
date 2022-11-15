class ApiConstance {
  //                                                         /movie/76341?api_key=<<api_key>>
  static const String baseUrl = "https://api.themoviedb.org/3";
  static const String apiKey = "03c1b496b0bd8b48501e5eec0af2b127";
  static const String nowPlayingMoviesPath =
      "$baseUrl/movie/now_playing?api_key=$apiKey";
  static const String popularMoviesPath =
      "$baseUrl/movie/popular?api_key=$apiKey";
  static const String nowTopRatedMoviesPath =
      "$baseUrl/movie/top_rated?api_key=$apiKey";

  static String movieDetailsPath(int movieId) =>
      "$baseUrl/movie/$movieId?api_key=$apiKey";

  static String recommendationPath(int movieId) =>
      "$baseUrl/movie/$movieId/recommendations?api_key=$apiKey";

//https://api.themoviedb.org/3/movie/830788?api_key=03c1b496b0bd8b48501e5eec0af2b127
  static const String baseImageUrl = "https://image.tmdb.org/t/p/w500";

  static String imageUrl(String path) => '$baseImageUrl$path';
}
