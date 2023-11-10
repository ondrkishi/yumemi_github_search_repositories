import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:yumemi_github_search_repositories/model/search_result_data.dart';
import 'package:yumemi_github_search_repositories/repository/search_repository.dart';

part 'search_result.g.dart';

@riverpod
class SearchResult extends _$SearchResult {
  @override
  Future<SearchResultData> build() async => const SearchResultData();

  final _repo = SearchGitHubRepository();
  late String _searchWord;
  late int _page;

  /// データ取得（1ページ目）
  Future<void> getData(String searchWord) async {
    _searchWord = searchWord;
    _page = 1;
    state = const AsyncLoading();

    if (searchWord.isEmpty) {
      // 検索ワードが空の場合はリクエストはせずstateを[SearchResultData]の初期値に更新
      state = const AsyncData(SearchResultData());
    } else {
      try {
        final res = await _repo.fetchSearchResult(_searchWord, _page);
        if (res != null) {
          state = AsyncData(res);
        }
      } catch (e, stack) {
        state = AsyncError(e, stack);
      }
    }
  }

  /// データ取得（追加読み込み）
  Future<void> getMoreData() async {
    _page += 1;
    state = const AsyncLoading();

    try {
      final res = await _repo.fetchSearchResult(_searchWord, _page);
      if (res != null) {
        final List<SearchResultItemData> upDatedItemList = [...state.value?.items ?? [], ...res.items];
        state = AsyncData(res.copyWith(items: upDatedItemList));
      }
    } catch (e, stack) {
      state = AsyncError(e, stack);
    }
  }
}
