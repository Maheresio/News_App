import 'package:news_app/core/utils/app_constants.dart';

abstract class NewsRepo {
  EitherType getBreakingNews();
  EitherType getRecommendationNews();
}
