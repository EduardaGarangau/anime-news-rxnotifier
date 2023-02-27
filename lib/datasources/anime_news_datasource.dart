import 'dart:convert';
import 'package:http/http.dart' as http;

class AnimeNewsDatasource {
  Future<List<dynamic>> fetchNews() async {
    final response = await http.get(Uri.parse(
        'https://www.intoxianime.com/?rest_route=/wp/v2/posts&page=1&per_page=10'));
    return jsonDecode(response.body);
  }
}
