import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:logger/logger.dart';
import 'package:yumemi_github_search_repositories/model/search_result_data.dart';

class SearchGitHubRepository {
  var logger = Logger();

  Future<SearchResultData?> fetchSearchResult(String searchWord) async {
    try {
      final res = await http.get(Uri.parse('https://api.github.com/search/repositories?q=$searchWord'));
      final statusCode = res.statusCode;
      if (statusCode == 200) {
        final body = jsonDecode(res.body);
        final data = SearchResultData.fromJson(body);
        return data;
      } else {
        logger.e('[SearchGitHubRepository.fetchSearchResult] API STATUS ERROR ', error: 'statusCode = $statusCode');
      }
    } catch (e) {
      logger.e('[SearchGitHubRepository.fetchSearchResult] EXCEPTION ERROR ', error: e);
    }

    return null;
  }
}
