import 'package:clean_arc_movies/movies/domain/entities/recommendation_entities.dart';

class RecommendationModel extends Recommendation {
  const RecommendationModel({
    required super.backDropPath,
    required super.id,
  });

  factory RecommendationModel.fromJson(Map<String, dynamic> json) =>
      RecommendationModel(
        backDropPath: json['backdrop_path'],
        id: json['id'],
      );
}
