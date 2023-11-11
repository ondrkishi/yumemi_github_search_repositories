import 'package:flutter/material.dart';
import 'package:yumemi_github_search_repositories/model/search_result_data.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class DetailPage extends StatelessWidget {
  const DetailPage({super.key});

  @override
  Widget build(BuildContext context) {
    final data = ModalRoute.of(context)?.settings.arguments;

    if (data != null && data is SearchResultItemData) {
      return Scaffold(
        appBar: AppBar(
          title: Text(AppLocalizations.of(context)!.detailPageTitle),
        ),
        body: _buildBody(context, data),
      );
    } else {
      return const SizedBox.shrink();
    }
  }

  Widget _buildBody(BuildContext context, SearchResultItemData data) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 14),
        child: Column(
          children: [
            // オーナーアイコン
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 24),
              child: Container(
                alignment: Alignment.center,
                width: 140,
                height: 140,
                decoration: BoxDecoration(
                  color: Colors.grey[70],
                  borderRadius: BorderRadius.circular(100),
                  image: DecorationImage(
                    fit: BoxFit.fitWidth,
                    image: NetworkImage(data.owner.ownerIconUrl),
                  ),
                ),
              ),
            ),
            Text(data.repositoryName, style: const TextStyle(fontSize: 26, fontWeight: FontWeight.bold)),
            const SizedBox(height: 24),
            // 区切り線
            Container(height: 1, color: Colors.grey),
            const SizedBox(height: 24),
            // プロジェクト言語
            _buildRepositoryDataItem(context, Icons.language, AppLocalizations.of(context)!.language, data.language),
            // Star 数
            _buildRepositoryDataItem(context, Icons.star, AppLocalizations.of(context)!.star, data.starCount.toString()),
            // Watcher 数
            _buildRepositoryDataItem(context, Icons.remove_red_eye, AppLocalizations.of(context)!.watcher, data.watchersCount.toString()),
            // Fork 数
            _buildRepositoryDataItem(context, Icons.fork_left, AppLocalizations.of(context)!.fork, data.forksCount.toString()),
            // Issue 数
            _buildRepositoryDataItem(context, Icons.warning, AppLocalizations.of(context)!.issue, data.issuesCount.toString()),
          ],
        ),
      ),
    );
  }

  /// 「プロジェクト言語」や「starの数」などを表示するアイテム
  Widget _buildRepositoryDataItem(BuildContext context, IconData icon, String title, String data) {
    final text = data.isNotEmpty ? data : '-';
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 14),
      child: SizedBox(
        height: 46,
        child: Row(
          children: [
            const SizedBox(width: 15),
            Icon(icon, size: 20),
            const SizedBox(width: 10),
            Text(title, style: const TextStyle(fontSize: 18)),
            const Spacer(),
            Text(text, style: const TextStyle(fontSize: 18)),
            const SizedBox(width: 20)
          ],
        ),
      ),
    );
  }
}
