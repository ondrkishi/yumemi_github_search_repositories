import 'package:flutter_test/flutter_test.dart';
import 'package:yumemi_github_search_repositories/model/search_result_data.dart';

///
/// [SearchResultData]の.fromJson()が期待値通りの値を返すかのテスト
///
void main() {
  test('Search result data convert form json', () {
    for (final pattern in _searchResultTestPatterns) {
      final result = SearchResultData.fromJson(pattern.testData);

      expect(pattern.expect, result, reason: '${pattern.name} is FAILED');
    }
  });
}

final List<SearchResultDataTestPattern> _searchResultTestPatterns = [
  // 1.testDataの各要素の並び順がSearchResultData内のデータの並び順とそろっている、itemsが2つ
  SearchResultDataTestPattern(
    name: '1.正常系(testDataの各要素の並び順がSearchResultData内のデータの並び順とそろっている)',
    testData: _alignedData,
    expect: const SearchResultData(
      totalCount: 125,
      incompleteResults: false,
      items: [
        SearchResultItemData(
          repositoryName: 'testRepository1',
          owner: Owner(ownerIconUrl: 'image.png'),
          language: 'Dart',
          starCount: 8,
          watchersCount: 10,
          forksCount: 15,
          issuesCount: 20,
        ),
        SearchResultItemData(
          repositoryName: 'testRepository2',
          owner: Owner(ownerIconUrl: 'image.jpg'),
          language: 'C#',
          starCount: 15,
          watchersCount: 21,
          forksCount: 12,
          issuesCount: 18,
        ),
      ],
    ),
  ),
  // 2.itemsが1つ、testDataの各要素の並び順がSearchResultData内のデータの並び順と一致していない
  SearchResultDataTestPattern(
    name: '2.正常系(testDataの各要素の並び順がSearchResultData内のデータの並び順と一致していない)',
    testData: _unalignedData,
    expect: const SearchResultData(
      totalCount: 35,
      incompleteResults: true,
      items: [
        SearchResultItemData(
          repositoryName: 'testRepository3',
          owner: Owner(ownerIconUrl: 'image.gif'),
          language: 'Java',
          starCount: 16,
          watchersCount: 40,
          forksCount: 32,
          issuesCount: 56,
        ),
      ],
    ),
  ),
  // 3.testDataの中身が空
  const SearchResultDataTestPattern(
    name: '3.異常系(testDataの中身が空)',
    testData: {},
    expect: SearchResultData(),
  ),
];

/// テストするデータとその期待値をまとめておくクラス
class SearchResultDataTestPattern {
  const SearchResultDataTestPattern({
    required this.name,
    required this.testData,
    required this.expect,
  });

  /// テストの概要を表す名称
  final String name;

  /// テストデータ
  final Map<String, dynamic> testData;

  ///
  final SearchResultData expect;
}

/// ------------------------------
/// 以降はテスト用のダミーデータ
/// ------------------------------

Map<String, dynamic> _alignedData = {
  'total_count': 125,
  'incomplete_results': false,
  'items': [
    _searchResultItemTestData1,
    _searchResultItemTestData2,
  ],
};

Map<String, dynamic> _unalignedData = {
  'items': [
    _searchResultItemTestData3,
  ],
  'total_count': 35,
  'incomplete_results': true,
};

Map<String, dynamic> _searchResultItemTestData1 = {
  'full_name': 'testRepository1',
  'owner': _ownerTestData1,
  'language': 'Dart',
  'stargazers_count': 8,
  'watchers_count': 10,
  'forks_count': 15,
  'open_issues_count': 20,
};

Map<String, dynamic> _ownerTestData1 = {'avatar_url': 'image.png'};

Map<String, dynamic> _searchResultItemTestData2 = {
  'full_name': 'testRepository2',
  'owner': _ownerTestData2,
  'language': 'C#',
  'stargazers_count': 15,
  'watchers_count': 21,
  'forks_count': 12,
  'open_issues_count': 18,
};

Map<String, dynamic> _ownerTestData2 = {'avatar_url': 'image.jpg'};

Map<String, dynamic> _searchResultItemTestData3 = {
  'watchers_count': 40,
  'language': 'Java',
  'open_issues_count': 56,
  'stargazers_count': 16,
  'full_name': 'testRepository3',
  'forks_count': 32,
  'owner': _ownerTestData3,
};

Map<String, dynamic> _ownerTestData3 = {'avatar_url': 'image.gif'};
