// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'search_result_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$SearchResultDataImpl _$$SearchResultDataImplFromJson(
        Map<String, dynamic> json) =>
    _$SearchResultDataImpl(
      totalCount: json['total_count'] as int? ?? 0,
      incompleteResults: json['incomplete_results'] as bool? ?? false,
      items: (json['items'] as List<dynamic>?)
              ?.map((e) =>
                  SearchResultItemData.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
    );

Map<String, dynamic> _$$SearchResultDataImplToJson(
        _$SearchResultDataImpl instance) =>
    <String, dynamic>{
      'total_count': instance.totalCount,
      'incomplete_results': instance.incompleteResults,
      'items': instance.items,
    };

_$SearchResultItemDataImpl _$$SearchResultItemDataImplFromJson(
        Map<String, dynamic> json) =>
    _$SearchResultItemDataImpl(
      repositoryName: json['full_name'] as String? ?? '',
      owner: json['owner'] == null
          ? const Owner()
          : Owner.fromJson(json['owner'] as Map<String, dynamic>),
      language: json['language'] as String? ?? '',
      starCount: json['stargazers_count'] as int? ?? 0,
      watchersCount: json['watchers_count'] as int? ?? 0,
      forksCount: json['forks_count'] as int? ?? 0,
      issuesCount: json['open_issues_count'] as int? ?? 0,
    );

Map<String, dynamic> _$$SearchResultItemDataImplToJson(
        _$SearchResultItemDataImpl instance) =>
    <String, dynamic>{
      'full_name': instance.repositoryName,
      'owner': instance.owner,
      'language': instance.language,
      'stargazers_count': instance.starCount,
      'watchers_count': instance.watchersCount,
      'forks_count': instance.forksCount,
      'open_issues_count': instance.issuesCount,
    };

_$OwnerImpl _$$OwnerImplFromJson(Map<String, dynamic> json) => _$OwnerImpl(
      ownerIconUrl: json['avatar_url'] as String? ?? '',
    );

Map<String, dynamic> _$$OwnerImplToJson(_$OwnerImpl instance) =>
    <String, dynamic>{
      'avatar_url': instance.ownerIconUrl,
    };
