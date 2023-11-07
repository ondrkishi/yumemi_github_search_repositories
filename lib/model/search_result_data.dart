/// freezedアノテーションを付けたクラスのフィールドに@JsonKeyを使用すると警告が出るためこのファイル上では無視する
/// https://github.com/rrousselGit/freezed/issues/488
// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

part 'search_result_data.freezed.dart';
part 'search_result_data.g.dart';

///
/// APIから取得した検索結果を保持しておくためのクラス
///

@freezed
class SearchResultData with _$SearchResultData {
  const SearchResultData._();

  const factory SearchResultData({
    @Default(0) @JsonKey(name: 'total_count') int totalCount,
    @Default(false) @JsonKey(name: 'incomplete_results') bool incompleteResults,
    @Default([]) @JsonKey(name: 'items') List<SearchResultItemData> items,
  }) = _SearchResultData;

  factory SearchResultData.fromJson(Map<String, dynamic> json) => _$SearchResultDataFromJson(json);
}

@freezed
class SearchResultItemData with _$SearchResultItemData {
  const SearchResultItemData._();

  const factory SearchResultItemData({
    // リポジトリ名
    @Default('') @JsonKey(name: 'full_name') String repositoryName,

    // オーナーの情報
    @Default(Owner()) @JsonKey(name: 'owner') Owner owner,

    // プロジェクト言語
    @Default('') String language,

    // Star 数
    @Default(0) @JsonKey(name: 'stargazers_count') int starCount,

    // Watcher 数
    @Default(0) @JsonKey(name: 'watchers_count') int watchersCount,

    // Fork 数
    @Default(0) @JsonKey(name: 'forks_count') int forksCount,

    // Issue 数
    @Default(0) @JsonKey(name: 'open_issues_count') int issuesCount,
  }) = _SearchResultItemData;

  factory SearchResultItemData.fromJson(Map<String, dynamic> json) => _$SearchResultItemDataFromJson(json);
}

@freezed
class Owner with _$Owner {
  const Owner._();

  const factory Owner({
    // オーナーアイコン
    @Default('') @JsonKey(name: 'avatar_url') String ownerIconUrl,
  }) = _Owner;

  factory Owner.fromJson(Map<String, dynamic> json) => _$OwnerFromJson(json);
}
