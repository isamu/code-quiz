# code-quiz

## 最初に
code-quizは、rubyでアルゴリズムを実装する競技です。
githubで問題と解答の用のプログラムを配布しているので、そちらをgithubでforkして自分の解答を実装していきます。
実装したアルゴリズムはrspecで答え合わせをし、実装後はgithubにpushしてcircleCIで最終的な答え合わせをします。

## インストール

`bundle install --path vendor/bundler`

## 問題
各問題はworks/{nn}/{nn}/README*.mdにあります。
それらをよく読んで、解答を実装してください。

## 解答

解答はworks/{nn}/{nn}/answer.rbに実装してください。
問題のクラスに、testメソッドで実装してください。
解答の例は各問題のREADME*.mdに書いてあります。

## 答え合わせ

`bundle exec rspec`

## 解答提出

githubとcircle ciの連携が必要です。

https://circleci.com/

で、アカウントを作り、このレポジトリのテストを設定してください。
通常はレポジトリにcircleCIの設定が含まれているので、プロジェクトのビルドを追加するだけで、設定完了です。