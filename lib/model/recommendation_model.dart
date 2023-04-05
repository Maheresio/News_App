class RecommendationModel {
  final String category;
  final String author;
  final String imageUrl;
  final String profileImageUrl;
  final String publishedDate;
  final String title;
  bool isFavorite;

  RecommendationModel(
      {required this.category,
      this.isFavorite = false,
      required this.profileImageUrl,
      required this.author,
      required this.imageUrl,
      required this.publishedDate,
      required this.title});
}
