class NewsModel {
  final String id;
  final String category;
  final String author;
  final String imageUrl;
  final String profileImageUrl;
  final bool isVerified;
  final String publishedDate;
  final String title;
  final String description;
  bool isFavorite;

  NewsModel({
    required this.id,
    required this.profileImageUrl,
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
