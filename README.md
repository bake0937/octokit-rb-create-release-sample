# octokit_rb_create_release_sample

[octokit.rbを使ってリポジトリのリリースを作ってみる](https://bake0937.hatenablog.com/entry/2019/10/06/202841) のサンプルリポジトリです。
対象のリポジトリにリリースを作ることができます。

## 使い方
1. `git clone` する
1. `.env`を作成し、以下のように環境変数を設定する
  ```diff
  ++ GITHUB_PERSONAL_ACCESS_TOKEN = パーソナルアクセストークン
  ++ GITHUB_REPOSITORY = ユーザ名/リポジトリ名
  ```
3. octokit_rb_create_release_sampleディレクトリで以下を実行
```
$ bundle install
$ ruby app.rb
```