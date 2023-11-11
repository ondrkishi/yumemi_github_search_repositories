import 'package:logger/logger.dart';
import 'package:yumemi_github_search_repositories/api/search_resurt_api_client.dart';
import 'package:yumemi_github_search_repositories/model/search_result_data.dart';

class SearchGitHubRepository {
  final _searchResultApiClient = SearchResultApiClient();
  var logger = Logger();

  /// APIから取得したjsonデータをSearchResultDataにして返す
  Future<SearchResultData> fetchSearchResult(String searchWord, int page) async {
    try {
      final json = await _searchResultApiClient.get(searchWord, page);
      return SearchResultData.fromJson(json);
    } catch (e, stacktrace) {
      logger.e('[SearchGitHubRepository.fetchSearchResult] EXCEPTION ERROR ', error: e, stackTrace: stacktrace);
      throw Exception('[SearchGitHubRepository.fetchSearchResult] EXCEPTION ERROR e = $e');
    }
  }
}
