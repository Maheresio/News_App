class RecommendationModel {
  final String category;
  final String publisher;
  final String imageUrl;
  final String profileImageUrl;
  final int publishedTime;
  final String title;

  RecommendationModel(
      {required this.category,
      required this.profileImageUrl,
      required this.publisher,
      required this.imageUrl,
      required this.publishedTime,
      required this.title});
}
