# code-quiz

## 最初に
code-quizは、rubyでアルゴリズムを実装するクイズです。
githubで問題と解答の用のプログラムを配布しているので、そちらをgithubでforkして解答を実装します。
実装したアルゴリズムはrspecで答え合わせをし、実装後はgithubにpushしてcircleCIで最終的な答え合わせをします。

## インストール
githubの自分のアカウントにforkしてください。
forkしたレポジトリをclone後に、

```
bundle install --path vendor/bundler
```
を実行してください。（rubyの環境が必要です）

## 問題
各問題はworks/{nn}/{nn}/README*.mdにあります。
それらをよく読んで、解答を実装してください。

## 解答

解答はworks/{nn}/{nn}/answer.rbに実装してください。
問題のクラスに、testメソッドで実装してください。
解答の例は各問題のREADME*.mdに書いてあります。

## 答え合わせ

`bundle exec rspec`

を実行してください。rspecによって答え合わせをします。

## 解答提出

答え合わせ後、テストが全てパスしたら、解答を提出してください。
githubとcircle ciの連携が必要です。

https://circleci.com/

で、アカウントを作り、このforkしたレポジトリのビルドテストを追加してください。
通常はレポジトリにcircleCIの設定が含まれているので、プロジェクトのビルドを追加するだけで、設定完了です。

### Circle CIの設定方法

TBD

### 更新
最新の問題を取得するには、本家のレポジトをupstreamで登録し、fetch, mergeします。

レポジトリの追加は最初に１回のみ、実行してください。
```
git remote add upstream git@github.com:isamu/code-quiz.git
```

fetch, mergeします。

```
git fetch upstream
git merge upstream/master
```

### 問題を投稿する

PRください。
詳細は TBD.
