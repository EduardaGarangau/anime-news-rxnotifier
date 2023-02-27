import 'package:anime_news/main.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:rx_notifier/rx_notifier.dart';

import '../datasources/anime_news_datasource.dart';
import '../reducers/anime_news_reducer.dart';
import '../repositories/anime_news_repository.dart';
import '../stores/anime_news_store.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  void initState() {
    super.initState();
    animeNewsStore.fetchNews();
  }

  @override
  Widget build(BuildContext context) {
    final news = context.select(() => animeNewsStore.news.value);

    return Scaffold(
      appBar: AppBar(
        title: const Text('AnimeNews'),
      ),
      body: ListView.builder(
        itemCount: news.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(news[index].title),
          );
        },
      ),
    );
  }
}
