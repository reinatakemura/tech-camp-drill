# 最初に、下記の手順でアプリケーションの雛形を作成してください。

# > cd ~/projects/ （フォルダ名は適宜読み替えてください）
# > rails new model-app -d mysql
# > cd model-app/
# > rails g scaffold product name:string price:integer
# > bundle exec rake db:create
# > bundle exec rake db:migrate
# このアプリケーションでは商品の名前と価格を登録することができます。
# 商品の新規作成が行われた場合、ユーザーが入力した価格に対して自動で消費税額8%を加算してからデータベースに保存しようと考えています。

# （問題）
# ①product.rbにメソッドadd_taxを追加してください。このメソッド内で、ユーザーの入力値に8%を加算してください。
# ②上記の条件メソッドを使用し、上の条件を満たすようコードを書き換えてください。

model-app-drill36に詳細あり
