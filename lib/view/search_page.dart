import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:yumemi_github_search_repositories/model/page/page_definition.dart';
import 'package:yumemi_github_search_repositories/model/search_result_data.dart';
import 'package:yumemi_github_search_repositories/view_model/search_result.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:yumemi_github_search_repositories/view_model/theme_mode.dart';

///
/// 検索画面のUI
///

class SearchPage extends ConsumerWidget {
  const SearchPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: AppBar(
        title: Text(AppLocalizations.of(context)!.searchPageTitle),
        actions: [_buildChangeThemeModeMenu(ref)],
      ),
      body: _buildSearchBarAndResult(context, ref),
    );
  }

  /// テーマモードを変更するメニューを表示するアイコン
  Widget _buildChangeThemeModeMenu(WidgetRef ref) {
    final themeMode = ref.watch(themeModeStateProvider.notifier);

    return Padding(
      padding: const EdgeInsets.all(10),
      child: PopupMenuButton<ThemeMode>(
        icon: const Icon(Icons.settings_brightness),
        // themeMode.state に選択された 外観モード をセットする
        onSelected: (ThemeMode selectedThemeMode) => themeMode.update(selectedThemeMode),

        itemBuilder: (context) => <PopupMenuEntry<ThemeMode>>[
          PopupMenuItem(
            value: ThemeMode.system,
            child: Text(AppLocalizations.of(context)!.themeModeSystem),
          ),
          PopupMenuItem(
            value: ThemeMode.light,
            child: Text(AppLocalizations.of(context)!.themeModLight),
          ),
          PopupMenuItem(
            value: ThemeMode.dark,
            child: Text(AppLocalizations.of(context)!.themeModeDark),
          ),
        ],
      ),
    );
  }

  Widget _buildSearchBarAndResult(BuildContext context, WidgetRef ref) {
    final result = ref.watch(searchResultProvider);
    final value = result.value;

    return GestureDetector(
      behavior: HitTestBehavior.opaque,
      onTap: () => FocusScope.of(context).unfocus(),
      child: Column(
        children: [
          // テキストフィールド
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 24),
            child: TextField(
              decoration: InputDecoration(hintText: AppLocalizations.of(context)!.textFieldHintText),
              onSubmitted: (value) => ref.read(searchResultProvider.notifier).getData(value),
              textInputAction: TextInputAction.search,
            ),
          ),

          // 件数表示
          Container(
            alignment: Alignment.centerRight,
            padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 5),
            child: Text(('${AppLocalizations.of(context)!.totalCountTitle} : ${value?.totalCount ?? 0}')),
          ),

          // 検索結果
          _buildSearchResultContents(context, ref),
        ],
      ),
    );
  }

  /// 検索結果の表示エリア
  Widget _buildSearchResultContents(BuildContext context, WidgetRef ref) {
    final state = ref.watch(searchResultProvider);
    final value = state.value;

    return Expanded(
      child: Stack(
        children: [
          // [searchResultProvider]の状態（loading/error/data）によって表示するWidgetを分ける
          state.maybeWhen(
            // errorの場合はエラー文を表示
            error: (error, stacktrace) => _failedToRetrieveDataErrorMessage(context),
            // それ以外であれば検索結果を表示
            orElse: () => _buildSearchResult(context, value, ref),
          ),
          // loadingの場合はローディングインジケータを上に重ねて表示する
          if (state.isLoading)
            const Align(
              alignment: Alignment.center,
              child: CircularProgressIndicator(),
            ),
        ],
      ),
    );
  }

  /// データ取得エラー時のメッセージ
  Widget _failedToRetrieveDataErrorMessage(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(24),
      child: Column(
        children: [
          const Icon(Icons.warning, size: 30),
          const SizedBox(height: 8),
          Text(AppLocalizations.of(context)!.failedToRetrieveDataError),
        ],
      ),
    );
  }

  /// 検索結果
  Widget _buildSearchResult(BuildContext context, SearchResultData? value, WidgetRef ref) {
    if (value != null && value.items.isNotEmpty) {
      return ListView.separated(
        padding: const EdgeInsets.symmetric(horizontal: 4, vertical: 10),
        itemCount: value.items.length + 1, // 追加読み込みボタンの分+1する
        separatorBuilder: (context, index) => const SizedBox(height: 10),
        itemBuilder: (context, index) {
          if (value.items.length == index) {
            // 追加読み込みボタン
            return _moreButton(context, value, ref);
          } else {
            // 検索結果のアイテム
            return _buildItem(context, value.items[index]);
          }
        },
      );
    } else {
      return const SizedBox.shrink();
    }
  }

  /// 追加読み込みボタン
  Widget _moreButton(BuildContext context, SearchResultData value, WidgetRef ref) {
    /// totalCountより取得しているitemの数が少ない場合にだけ表示する
    if (value.totalCount > value.items.length) {
      return Padding(
        padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 80),
        child: OutlinedButton(
          child: Text(AppLocalizations.of(context)!.moreButtonText),
          onPressed: () => ref.read(searchResultProvider.notifier).getMoreData(),
        ),
      );
    } else {
      return const SizedBox.shrink();
    }
  }

  /// 検索結果のアイテム
  Widget _buildItem(BuildContext context, SearchResultItemData data) {
    final language = data.language.isEmpty ? '-' : data.language;
    const double ownerIconSize = 50;

    return ListTile(
      leading: Container(
        height: ownerIconSize,
        width: ownerIconSize,
        decoration: BoxDecoration(
          color: Colors.grey[200],
          borderRadius: BorderRadius.circular(ownerIconSize / 2),
          image: DecorationImage(
            fit: BoxFit.fitWidth,
            image: NetworkImage(data.owner.ownerIconUrl),
          ),
        ),
      ),
      title: Text(data.repositoryName),
      subtitle: Text(language, style: const TextStyle(color: Colors.grey)),
      trailing: const Icon(Icons.navigate_next),
      onTap: () => Navigator.of(context).pushNamed(PageDefinition.detailPage.name, arguments: data),
    );
  }
}
