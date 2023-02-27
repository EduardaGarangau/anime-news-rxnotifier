import 'package:anime_news/models/anime_news_model.dart';
import 'package:rx_notifier/rx_notifier.dart';

class AnimeNewsStore {
  // atom
  var news = RxNotifier<List<AnimeNewsModel>>([]);

  // action
  final fetchNews = RxAction();
}
