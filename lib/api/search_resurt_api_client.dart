import 'dart:convert';
import 'package:http/http.dart' as http;

/// githubAPI[Search repositories]へのAPIClient
class SearchResultApiClient {
  /// API呼び出しを行う
  Future<Map<String, dynamic>> get(String searchWord, int page) async {
    final res = await http.get(Uri.parse('https://api.github.com/search/repositories?q=$searchWord&page=$page'));
    final statusCode = res.statusCode;
    if (statusCode == 200) {
      return jsonDecode(res.body);
    } else {
      throw Exception('[SearchGitHubRepository.fetchSearchResult] API STATUS ERROR statusCode = $statusCode');
    }
  }
}
