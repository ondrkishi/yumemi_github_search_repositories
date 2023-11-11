# 株式会社ゆめみ Flutter エンジニアコードチェック課題のアプリ
[課題リンク](https://github.com/yumemi-inc/flutter-engineer-codecheck)

# 概要
## 動作
* 何かしらのキーワードを入力できる
* 入力したキーワードで GitHub のリポジトリを検索できる
* GitHub のリポジトリを検索する際、GitHub API（[search/repositories](https://docs.github.com/ja/rest/search/search?apiVersion=2022-11-28#search-repositories)）を利用する
* 検索結果は一覧で「リポジトリ名」「オーナーアイコン」「プロジェクト言語」を表示する
    * 一度に取得できる結果は30件、一覧の最下部の「追加読み込み」ボタンタップで追加読み込みをする
* 検索結果のアイテムをタップしたら、該当リポジトリの詳細（リポジトリ名、オーナーアイコン、プロジェクト言語、Star 数、Watcher 数、Fork 数、Issue 数）を表示する
* 「英語」「日本語」の多言語対応
    * 端末の設定で言語を変更するとそれに応じた言語に翻訳される
* ダークモード対応

## スクリーンショット / ムービー
### 検索結果画面
<img src="https://github.com/ondrkishi/yumemi_github_search_repositories/assets/93812971/b342cc46-582c-4a70-b251-c19c76375881" width="400"> <img src="https://github.com/ondrkishi/yumemi_github_search_repositories/assets/93812971/bd24bd53-29cb-44f1-9985-7aa55d6d9eac" width="400">

### 詳細画面
<img src="https://github.com/ondrkishi/yumemi_github_search_repositories/assets/93812971/947423b4-af6a-4021-903c-724439c44647" width="400"> <img src="https://github.com/ondrkishi/yumemi_github_search_repositories/assets/93812971/56dc8903-2fe1-47b0-974b-c9e5aed6fedd" width="400">

### 多言語対応（日本語表示）
<img src="https://github.com/ondrkishi/yumemi_github_search_repositories/assets/93812971/0ee21586-5291-4390-8550-229354920d85" width="400"> <img src="https://github.com/ondrkishi/yumemi_github_search_repositories/assets/93812971/a862b5b5-ca01-4749-8c26-6016898d75de" width="400">

### APIエラー時の表示
<img src="https://github.com/ondrkishi/yumemi_github_search_repositories/assets/93812971/56d31fe8-0ffd-4cd4-9615-80854fc934b0" width="400">

### ムービー
https://github.com/ondrkishi/yumemi_github_search_repositories/assets/93812971/5b731416-78e9-4844-988a-59f6d6a2b820

# 環境
* 開発OS : Windows
    * ※開発環境の都合により、Windowsでの開発になっています。
    * そのためMacでビルドした場合予期せぬエラーが発生する可能性があります。
* flutter :  3.13.9
* Dart : 3.1.5
* 動作するOS : Android

# アーキテクチャ
* MVVM + repository

## M (Model)
* アプリ内で使用するデータを定義する

## V (View)
* UI（見た目）の部分
* ユーザーからの入力データを受け取り、VMに伝達する

## VM (ViewModel)
* Viewから受け取った情報を元に情報を適切に加工する
* データに変化があった場合にはViewに渡して画面の更新を促す

## repository
* VMから呼び出され、APIからデータを取得する
* 実際にAPIを呼び出しているのはAPIClientなので、これを呼び出してデータを適切に加工しVMに返却する

# 状態管理
riverpod

# ビルド手順
gitクローン

```
git clone https://github.com/ondrkishi/yumemi_github_search_repositories.git
```

パッケージの取得(ここで多言語対応の翻訳ファイルも同時に生成される)

```
flutter pub get
```

ビルド

```
flutter run
```

# アピールポイント
* アーキテクチャはMVVM+repositoryを採用し、各層の責務を分離することを意識しました
* UIはできるだけ情報量を減らし、アイコンなどを使ってシンプルで分かりやすいデザインを意識しました
* json → Modelのデータ に変換する処理のunitTestを作成しました
* ダークモード / ライトモード を切り替えられる機能を実装しました
* 「英語」「日本語」の2言語対応としました
* APIエラーを取得した場合は、画面上にエラー表示を行うようにしました
* APIからのデータ取得（非同期処理）中はローディングインジケータを表示し、読み込み中であることがユーザーに分かりやすいようにしました


# 補足
以下に関しては今回は実装には至りませんでした
* WidgetTest
* CI/CD