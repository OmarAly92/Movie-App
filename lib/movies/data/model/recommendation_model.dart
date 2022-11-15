import 'package:clean_arc_movies/movies/domain/entities/recommendation_entities.dart';

class RecommendationModel extends Recommendation {
  const RecommendationModel({
    super.backDropPath,
    required super.id,
  });

  factory RecommendationModel.fromJson(Map<String, dynamic> json) =>
      RecommendationModel(
        backDropPath:
            json['backdrop_path'] ?? '/yYrvN5WFeGYjJnRzhY0QXuo4Isw.jpg',
        id: json['id'],
      );
}
