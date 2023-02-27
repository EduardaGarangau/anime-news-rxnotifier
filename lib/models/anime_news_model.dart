class AnimeNewsModel {
  final int id;
  final String title;
  final String imageURL;
  final String author;

  const AnimeNewsModel({
    required this.id,
    required this.title,
    required this.imageURL,
    required this.author,
  });

  factory AnimeNewsModel.fromJson(Map<String, dynamic> json) {
    return AnimeNewsModel(
      id: json['id'] as int,
      title: json['title']['rendered'] as String,
      imageURL: json['yoast_head_json']['og_image'][0]['url'] as String,
      author: json['yoast_head_json']['author'] as String,
    );
  }
}
