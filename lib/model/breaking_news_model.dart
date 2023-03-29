class BreakingNewsModel {
  final String category;
  final String publisher;
  final String imageUrl;
  final bool isVerified;
  final int publishedTime;
  final String title;

  BreakingNewsModel({
    required this.category,
    required this.publisher,
    required this.imageUrl,
    this.isVerified = false,
    required this.publishedTime,
    required this.title,
  });

 
}
