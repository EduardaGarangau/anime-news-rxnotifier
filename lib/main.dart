import 'package:anime_news/pages/home_page.dart';
import 'package:anime_news/reducers/anime_news_reducer.dart';
import 'package:anime_news/repositories/anime_news_repository.dart';
import 'package:anime_news/stores/anime_news_store.dart';
import 'package:flutter/material.dart';
import 'package:rx_notifier/rx_notifier.dart';

import 'datasources/anime_news_datasource.dart';

late final AnimeNewsStore animeNewsStore;
late final AnimeNewsRepository repository;
late final AnimeNewsReducer animeNewsReducer;

void main() async {
  animeNewsStore = AnimeNewsStore();
  repository = AnimeNewsRepository(datasource: AnimeNewsDatasource());
  animeNewsReducer = AnimeNewsReducer(animeNewsStore, repository);

  runApp(const RxRoot(child: MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const HomePage(),
    );
  }
}
