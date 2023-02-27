import 'package:anime_news/repositories/anime_news_repository.dart';
import 'package:anime_news/stores/anime_news_store.dart';
import 'package:rx_notifier/rx_notifier.dart';

class AnimeNewsReducer extends RxReducer {
  final AnimeNewsRepository repository;
  final AnimeNewsStore store;

  AnimeNewsReducer(
    this.store,
    this.repository,
  ) {
    on(() => [store.fetchNews], _fetchData);
  }

  void _fetchData() async {
    store.news.value = await repository.fetchNews();
  }
}
