import 'package:logger/logger.dart';
import 'package:yumemi_github_search_repositories/api/search_resurt_api_client.dart';
import 'package:yumemi_github_search_repositories/model/search_result_data.dart';

class SearchGitHubRepository {
  final _searchResultApiClient = SearchResultApiClient();
  var logger = Logger();

  Future<SearchResultData?> fetchSearchResult(String searchWord) async {
    try {
      final json = await _searchResultApiClient.get(searchWord);
      return SearchResultData.fromJson(json);
    } catch (e, stacktrace) {
      logger.e('[SearchGitHubRepository.fetchSearchResult] EXCEPTION ERROR ', error: e, stackTrace: stacktrace);
    }
    return null;
  }
}
