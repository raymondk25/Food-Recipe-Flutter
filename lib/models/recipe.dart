class Recipe {
  final String name, images, totalTime;
  final double rating;

  Recipe(
      {required this.name,
      required this.images,
      required this.totalTime,
      required this.rating});

  factory Recipe.fromJson(dynamic json) {
    return Recipe(
        name: json['name'] as String,
        images: json['images'][0]['hostedLargeUrl'] as String,
        totalTime: json['totalTime'] as String,
        rating: json['rating'] as double);
  }

  static List<Recipe> recipeFromSnapshot(List snapshot) {
    return snapshot.map((data) {
      return Recipe.fromJson(data);
    }).toList();
  }

  @override
  String toString(){
    return 'Recipe {name: $name, images: $images, rating: $rating, totalTime: $totalTime}';
  }
}
