class BreakingNewsModel {
  final String category;
  final String author;
  final String imageUrl;
  final bool isVerified;
  final int publishedDate;
  final String title;
  final String description;
  bool isFavorite;

  BreakingNewsModel({
    this.isFavorite = false,
    required this.category,
    required this.description,
    required this.author,
    required this.imageUrl,
    this.isVerified = false,
    required this.publishedDate,
    required this.title,
  });
}
