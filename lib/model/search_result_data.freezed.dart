// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'search_result_data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

SearchResultData _$SearchResultDataFromJson(Map<String, dynamic> json) {
  return _SearchResultData.fromJson(json);
}

/// @nodoc
mixin _$SearchResultData {
  @JsonKey(name: 'total_count')
  int get totalCount => throw _privateConstructorUsedError;
  @JsonKey(name: 'incomplete_results')
  bool get incompleteResults => throw _privateConstructorUsedError;
  @JsonKey(name: 'items')
  List<SearchResultItemData> get items => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SearchResultDataCopyWith<SearchResultData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SearchResultDataCopyWith<$Res> {
  factory $SearchResultDataCopyWith(
          SearchResultData value, $Res Function(SearchResultData) then) =
      _$SearchResultDataCopyWithImpl<$Res, SearchResultData>;
  @useResult
  $Res call(
      {@JsonKey(name: 'total_count') int totalCount,
      @JsonKey(name: 'incomplete_results') bool incompleteResults,
      @JsonKey(name: 'items') List<SearchResultItemData> items});
}

/// @nodoc
class _$SearchResultDataCopyWithImpl<$Res, $Val extends SearchResultData>
    implements $SearchResultDataCopyWith<$Res> {
  _$SearchResultDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? totalCount = null,
    Object? incompleteResults = null,
    Object? items = null,
  }) {
    return _then(_value.copyWith(
      totalCount: null == totalCount
          ? _value.totalCount
          : totalCount // ignore: cast_nullable_to_non_nullable
              as int,
      incompleteResults: null == incompleteResults
          ? _value.incompleteResults
          : incompleteResults // ignore: cast_nullable_to_non_nullable
              as bool,
      items: null == items
          ? _value.items
          : items // ignore: cast_nullable_to_non_nullable
              as List<SearchResultItemData>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SearchResultDataImplCopyWith<$Res>
    implements $SearchResultDataCopyWith<$Res> {
  factory _$$SearchResultDataImplCopyWith(_$SearchResultDataImpl value,
          $Res Function(_$SearchResultDataImpl) then) =
      __$$SearchResultDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'total_count') int totalCount,
      @JsonKey(name: 'incomplete_results') bool incompleteResults,
      @JsonKey(name: 'items') List<SearchResultItemData> items});
}

/// @nodoc
class __$$SearchResultDataImplCopyWithImpl<$Res>
    extends _$SearchResultDataCopyWithImpl<$Res, _$SearchResultDataImpl>
    implements _$$SearchResultDataImplCopyWith<$Res> {
  __$$SearchResultDataImplCopyWithImpl(_$SearchResultDataImpl _value,
      $Res Function(_$SearchResultDataImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? totalCount = null,
    Object? incompleteResults = null,
    Object? items = null,
  }) {
    return _then(_$SearchResultDataImpl(
      totalCount: null == totalCount
          ? _value.totalCount
          : totalCount // ignore: cast_nullable_to_non_nullable
              as int,
      incompleteResults: null == incompleteResults
          ? _value.incompleteResults
          : incompleteResults // ignore: cast_nullable_to_non_nullable
              as bool,
      items: null == items
          ? _value._items
          : items // ignore: cast_nullable_to_non_nullable
              as List<SearchResultItemData>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SearchResultDataImpl extends _SearchResultData
    with DiagnosticableTreeMixin {
  const _$SearchResultDataImpl(
      {@JsonKey(name: 'total_count') this.totalCount = 0,
      @JsonKey(name: 'incomplete_results') this.incompleteResults = false,
      @JsonKey(name: 'items')
      final List<SearchResultItemData> items = const []})
      : _items = items,
        super._();

  factory _$SearchResultDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$SearchResultDataImplFromJson(json);

  @override
  @JsonKey(name: 'total_count')
  final int totalCount;
  @override
  @JsonKey(name: 'incomplete_results')
  final bool incompleteResults;
  final List<SearchResultItemData> _items;
  @override
  @JsonKey(name: 'items')
  List<SearchResultItemData> get items {
    if (_items is EqualUnmodifiableListView) return _items;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_items);
  }

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'SearchResultData(totalCount: $totalCount, incompleteResults: $incompleteResults, items: $items)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'SearchResultData'))
      ..add(DiagnosticsProperty('totalCount', totalCount))
      ..add(DiagnosticsProperty('incompleteResults', incompleteResults))
      ..add(DiagnosticsProperty('items', items));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SearchResultDataImpl &&
            (identical(other.totalCount, totalCount) ||
                other.totalCount == totalCount) &&
            (identical(other.incompleteResults, incompleteResults) ||
                other.incompleteResults == incompleteResults) &&
            const DeepCollectionEquality().equals(other._items, _items));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, totalCount, incompleteResults,
      const DeepCollectionEquality().hash(_items));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SearchResultDataImplCopyWith<_$SearchResultDataImpl> get copyWith =>
      __$$SearchResultDataImplCopyWithImpl<_$SearchResultDataImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SearchResultDataImplToJson(
      this,
    );
  }
}

abstract class _SearchResultData extends SearchResultData {
  const factory _SearchResultData(
          {@JsonKey(name: 'total_count') final int totalCount,
          @JsonKey(name: 'incomplete_results') final bool incompleteResults,
          @JsonKey(name: 'items') final List<SearchResultItemData> items}) =
      _$SearchResultDataImpl;
  const _SearchResultData._() : super._();

  factory _SearchResultData.fromJson(Map<String, dynamic> json) =
      _$SearchResultDataImpl.fromJson;

  @override
  @JsonKey(name: 'total_count')
  int get totalCount;
  @override
  @JsonKey(name: 'incomplete_results')
  bool get incompleteResults;
  @override
  @JsonKey(name: 'items')
  List<SearchResultItemData> get items;
  @override
  @JsonKey(ignore: true)
  _$$SearchResultDataImplCopyWith<_$SearchResultDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

SearchResultItemData _$SearchResultItemDataFromJson(Map<String, dynamic> json) {
  return _SearchResultItemData.fromJson(json);
}

/// @nodoc
mixin _$SearchResultItemData {
// リポジトリ名
  @JsonKey(name: 'full_name')
  String get repositoryName => throw _privateConstructorUsedError; // オーナーの情報
  @JsonKey(name: 'owner')
  Owner get owner => throw _privateConstructorUsedError; // プロジェクト言語
  String get language => throw _privateConstructorUsedError; // Star 数
  @JsonKey(name: 'stargazers_count')
  int get starCount => throw _privateConstructorUsedError; // Watcher 数
  @JsonKey(name: 'watchers_count')
  int get watchersCount => throw _privateConstructorUsedError; // Fork 数
  @JsonKey(name: 'forks_count')
  int get forksCount => throw _privateConstructorUsedError; // Issue 数
  @JsonKey(name: 'open_issues_count')
  int get issuesCount => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SearchResultItemDataCopyWith<SearchResultItemData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SearchResultItemDataCopyWith<$Res> {
  factory $SearchResultItemDataCopyWith(SearchResultItemData value,
          $Res Function(SearchResultItemData) then) =
      _$SearchResultItemDataCopyWithImpl<$Res, SearchResultItemData>;
  @useResult
  $Res call(
      {@JsonKey(name: 'full_name') String repositoryName,
      @JsonKey(name: 'owner') Owner owner,
      String language,
      @JsonKey(name: 'stargazers_count') int starCount,
      @JsonKey(name: 'watchers_count') int watchersCount,
      @JsonKey(name: 'forks_count') int forksCount,
      @JsonKey(name: 'open_issues_count') int issuesCount});

  $OwnerCopyWith<$Res> get owner;
}

/// @nodoc
class _$SearchResultItemDataCopyWithImpl<$Res,
        $Val extends SearchResultItemData>
    implements $SearchResultItemDataCopyWith<$Res> {
  _$SearchResultItemDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? repositoryName = null,
    Object? owner = null,
    Object? language = null,
    Object? starCount = null,
    Object? watchersCount = null,
    Object? forksCount = null,
    Object? issuesCount = null,
  }) {
    return _then(_value.copyWith(
      repositoryName: null == repositoryName
          ? _value.repositoryName
          : repositoryName // ignore: cast_nullable_to_non_nullable
              as String,
      owner: null == owner
          ? _value.owner
          : owner // ignore: cast_nullable_to_non_nullable
              as Owner,
      language: null == language
          ? _value.language
          : language // ignore: cast_nullable_to_non_nullable
              as String,
      starCount: null == starCount
          ? _value.starCount
          : starCount // ignore: cast_nullable_to_non_nullable
              as int,
      watchersCount: null == watchersCount
          ? _value.watchersCount
          : watchersCount // ignore: cast_nullable_to_non_nullable
              as int,
      forksCount: null == forksCount
          ? _value.forksCount
          : forksCount // ignore: cast_nullable_to_non_nullable
              as int,
      issuesCount: null == issuesCount
          ? _value.issuesCount
          : issuesCount // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $OwnerCopyWith<$Res> get owner {
    return $OwnerCopyWith<$Res>(_value.owner, (value) {
      return _then(_value.copyWith(owner: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$SearchResultItemDataImplCopyWith<$Res>
    implements $SearchResultItemDataCopyWith<$Res> {
  factory _$$SearchResultItemDataImplCopyWith(_$SearchResultItemDataImpl value,
          $Res Function(_$SearchResultItemDataImpl) then) =
      __$$SearchResultItemDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'full_name') String repositoryName,
      @JsonKey(name: 'owner') Owner owner,
      String language,
      @JsonKey(name: 'stargazers_count') int starCount,
      @JsonKey(name: 'watchers_count') int watchersCount,
      @JsonKey(name: 'forks_count') int forksCount,
      @JsonKey(name: 'open_issues_count') int issuesCount});

  @override
  $OwnerCopyWith<$Res> get owner;
}

/// @nodoc
class __$$SearchResultItemDataImplCopyWithImpl<$Res>
    extends _$SearchResultItemDataCopyWithImpl<$Res, _$SearchResultItemDataImpl>
    implements _$$SearchResultItemDataImplCopyWith<$Res> {
  __$$SearchResultItemDataImplCopyWithImpl(_$SearchResultItemDataImpl _value,
      $Res Function(_$SearchResultItemDataImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? repositoryName = null,
    Object? owner = null,
    Object? language = null,
    Object? starCount = null,
    Object? watchersCount = null,
    Object? forksCount = null,
    Object? issuesCount = null,
  }) {
    return _then(_$SearchResultItemDataImpl(
      repositoryName: null == repositoryName
          ? _value.repositoryName
          : repositoryName // ignore: cast_nullable_to_non_nullable
              as String,
      owner: null == owner
          ? _value.owner
          : owner // ignore: cast_nullable_to_non_nullable
              as Owner,
      language: null == language
          ? _value.language
          : language // ignore: cast_nullable_to_non_nullable
              as String,
      starCount: null == starCount
          ? _value.starCount
          : starCount // ignore: cast_nullable_to_non_nullable
              as int,
      watchersCount: null == watchersCount
          ? _value.watchersCount
          : watchersCount // ignore: cast_nullable_to_non_nullable
              as int,
      forksCount: null == forksCount
          ? _value.forksCount
          : forksCount // ignore: cast_nullable_to_non_nullable
              as int,
      issuesCount: null == issuesCount
          ? _value.issuesCount
          : issuesCount // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SearchResultItemDataImpl extends _SearchResultItemData
    with DiagnosticableTreeMixin {
  const _$SearchResultItemDataImpl(
      {@JsonKey(name: 'full_name') this.repositoryName = '',
      @JsonKey(name: 'owner') this.owner = const Owner(),
      this.language = '',
      @JsonKey(name: 'stargazers_count') this.starCount = 0,
      @JsonKey(name: 'watchers_count') this.watchersCount = 0,
      @JsonKey(name: 'forks_count') this.forksCount = 0,
      @JsonKey(name: 'open_issues_count') this.issuesCount = 0})
      : super._();

  factory _$SearchResultItemDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$SearchResultItemDataImplFromJson(json);

// リポジトリ名
  @override
  @JsonKey(name: 'full_name')
  final String repositoryName;
// オーナーの情報
  @override
  @JsonKey(name: 'owner')
  final Owner owner;
// プロジェクト言語
  @override
  @JsonKey()
  final String language;
// Star 数
  @override
  @JsonKey(name: 'stargazers_count')
  final int starCount;
// Watcher 数
  @override
  @JsonKey(name: 'watchers_count')
  final int watchersCount;
// Fork 数
  @override
  @JsonKey(name: 'forks_count')
  final int forksCount;
// Issue 数
  @override
  @JsonKey(name: 'open_issues_count')
  final int issuesCount;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'SearchResultItemData(repositoryName: $repositoryName, owner: $owner, language: $language, starCount: $starCount, watchersCount: $watchersCount, forksCount: $forksCount, issuesCount: $issuesCount)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'SearchResultItemData'))
      ..add(DiagnosticsProperty('repositoryName', repositoryName))
      ..add(DiagnosticsProperty('owner', owner))
      ..add(DiagnosticsProperty('language', language))
      ..add(DiagnosticsProperty('starCount', starCount))
      ..add(DiagnosticsProperty('watchersCount', watchersCount))
      ..add(DiagnosticsProperty('forksCount', forksCount))
      ..add(DiagnosticsProperty('issuesCount', issuesCount));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SearchResultItemDataImpl &&
            (identical(other.repositoryName, repositoryName) ||
                other.repositoryName == repositoryName) &&
            (identical(other.owner, owner) || other.owner == owner) &&
            (identical(other.language, language) ||
                other.language == language) &&
            (identical(other.starCount, starCount) ||
                other.starCount == starCount) &&
            (identical(other.watchersCount, watchersCount) ||
                other.watchersCount == watchersCount) &&
            (identical(other.forksCount, forksCount) ||
                other.forksCount == forksCount) &&
            (identical(other.issuesCount, issuesCount) ||
                other.issuesCount == issuesCount));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, repositoryName, owner, language,
      starCount, watchersCount, forksCount, issuesCount);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SearchResultItemDataImplCopyWith<_$SearchResultItemDataImpl>
      get copyWith =>
          __$$SearchResultItemDataImplCopyWithImpl<_$SearchResultItemDataImpl>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SearchResultItemDataImplToJson(
      this,
    );
  }
}

abstract class _SearchResultItemData extends SearchResultItemData {
  const factory _SearchResultItemData(
          {@JsonKey(name: 'full_name') final String repositoryName,
          @JsonKey(name: 'owner') final Owner owner,
          final String language,
          @JsonKey(name: 'stargazers_count') final int starCount,
          @JsonKey(name: 'watchers_count') final int watchersCount,
          @JsonKey(name: 'forks_count') final int forksCount,
          @JsonKey(name: 'open_issues_count') final int issuesCount}) =
      _$SearchResultItemDataImpl;
  const _SearchResultItemData._() : super._();

  factory _SearchResultItemData.fromJson(Map<String, dynamic> json) =
      _$SearchResultItemDataImpl.fromJson;

  @override // リポジトリ名
  @JsonKey(name: 'full_name')
  String get repositoryName;
  @override // オーナーの情報
  @JsonKey(name: 'owner')
  Owner get owner;
  @override // プロジェクト言語
  String get language;
  @override // Star 数
  @JsonKey(name: 'stargazers_count')
  int get starCount;
  @override // Watcher 数
  @JsonKey(name: 'watchers_count')
  int get watchersCount;
  @override // Fork 数
  @JsonKey(name: 'forks_count')
  int get forksCount;
  @override // Issue 数
  @JsonKey(name: 'open_issues_count')
  int get issuesCount;
  @override
  @JsonKey(ignore: true)
  _$$SearchResultItemDataImplCopyWith<_$SearchResultItemDataImpl>
      get copyWith => throw _privateConstructorUsedError;
}

Owner _$OwnerFromJson(Map<String, dynamic> json) {
  return _Owner.fromJson(json);
}

/// @nodoc
mixin _$Owner {
// オーナーアイコン
  @JsonKey(name: 'avatar_url')
  String get ownerIconUrl => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $OwnerCopyWith<Owner> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OwnerCopyWith<$Res> {
  factory $OwnerCopyWith(Owner value, $Res Function(Owner) then) =
      _$OwnerCopyWithImpl<$Res, Owner>;
  @useResult
  $Res call({@JsonKey(name: 'avatar_url') String ownerIconUrl});
}

/// @nodoc
class _$OwnerCopyWithImpl<$Res, $Val extends Owner>
    implements $OwnerCopyWith<$Res> {
  _$OwnerCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? ownerIconUrl = null,
  }) {
    return _then(_value.copyWith(
      ownerIconUrl: null == ownerIconUrl
          ? _value.ownerIconUrl
          : ownerIconUrl // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$OwnerImplCopyWith<$Res> implements $OwnerCopyWith<$Res> {
  factory _$$OwnerImplCopyWith(
          _$OwnerImpl value, $Res Function(_$OwnerImpl) then) =
      __$$OwnerImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({@JsonKey(name: 'avatar_url') String ownerIconUrl});
}

/// @nodoc
class __$$OwnerImplCopyWithImpl<$Res>
    extends _$OwnerCopyWithImpl<$Res, _$OwnerImpl>
    implements _$$OwnerImplCopyWith<$Res> {
  __$$OwnerImplCopyWithImpl(
      _$OwnerImpl _value, $Res Function(_$OwnerImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? ownerIconUrl = null,
  }) {
    return _then(_$OwnerImpl(
      ownerIconUrl: null == ownerIconUrl
          ? _value.ownerIconUrl
          : ownerIconUrl // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$OwnerImpl extends _Owner with DiagnosticableTreeMixin {
  const _$OwnerImpl({@JsonKey(name: 'avatar_url') this.ownerIconUrl = ''})
      : super._();

  factory _$OwnerImpl.fromJson(Map<String, dynamic> json) =>
      _$$OwnerImplFromJson(json);

// オーナーアイコン
  @override
  @JsonKey(name: 'avatar_url')
  final String ownerIconUrl;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'Owner(ownerIconUrl: $ownerIconUrl)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'Owner'))
      ..add(DiagnosticsProperty('ownerIconUrl', ownerIconUrl));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OwnerImpl &&
            (identical(other.ownerIconUrl, ownerIconUrl) ||
                other.ownerIconUrl == ownerIconUrl));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, ownerIconUrl);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$OwnerImplCopyWith<_$OwnerImpl> get copyWith =>
      __$$OwnerImplCopyWithImpl<_$OwnerImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$OwnerImplToJson(
      this,
    );
  }
}

abstract class _Owner extends Owner {
  const factory _Owner(
      {@JsonKey(name: 'avatar_url') final String ownerIconUrl}) = _$OwnerImpl;
  const _Owner._() : super._();

  factory _Owner.fromJson(Map<String, dynamic> json) = _$OwnerImpl.fromJson;

  @override // オーナーアイコン
  @JsonKey(name: 'avatar_url')
  String get ownerIconUrl;
  @override
  @JsonKey(ignore: true)
  _$$OwnerImplCopyWith<_$OwnerImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
