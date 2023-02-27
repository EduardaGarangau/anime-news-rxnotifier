import 'package:anime_news/models/anime_news_model.dart';

import '../datasources/anime_news_datasource.dart';

class AnimeNewsRepository {
  final AnimeNewsDatasource datasource;

  AnimeNewsRepository({
    required this.datasource,
  });

  Future<List<AnimeNewsModel>> fetchNews() async {
    final data = await datasource.fetchNews();
    return data.map((news) => AnimeNewsModel.fromJson(news)).toList();
  }
}
