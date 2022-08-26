class User {
  final String? name;
  final String imageUrl;
  final double? stars;
  final String? category;

  const User({
    this.name,
    required this.imageUrl,
    this.stars,
    this.category,
  });
}
