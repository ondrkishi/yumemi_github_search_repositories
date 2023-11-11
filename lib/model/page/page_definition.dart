import 'package:flutter/material.dart';
import 'package:yumemi_github_search_repositories/view/detail_page.dart';
import 'package:yumemi_github_search_repositories/view/search_page.dart';

///
/// 画面の定義
///

enum PageDefinition {
  searchPage,
  detailPage,
}

// MaterialAppで使用する画面のroute
Map<String, Widget Function(BuildContext)> routes = {
  PageDefinition.searchPage.name: (context) => const SearchPage(),
  PageDefinition.detailPage.name: (context) => const DetailPage(),
};
