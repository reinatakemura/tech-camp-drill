# [A]と[B]の記述があり、書き方の違いはあれど、どちらも描画されるビューは全く同じです。しかしながら、ある理由により、[A][B]いずれかの記述の方が好まれます。より良い記述は[A][B]どちらか選び、その理由を記述してください。

# [A].haml
# @users = User.all
# @users.each do |user|
#   = render 'user',  user: user

# [B].haml
# @users = User.all
#   = render 'user', users: @users

#参考：https://qiita.com/itmammoth/items/612efc6ad3280349b7e1
# [B]の方が好ましい。
# パーシャルファイルは一つなので、本来一度の実行で済む。
# しかし、eachの場合、userのデータ数分実行する事になり、
# 件数が多いとパフォーマンスが悪くなるため。

[B]の方が好まれます。
理由は、[B]の方が処理が速いからです。

[A]では、@usersにeachを使用して、user一人一人に対してrenderを実行しています。
この書き方だと、userが100人いると100回、50000人いると50000回、どの部分テンプレートを利用するのか探しにいく処理が実行されるため、ユーザーが多ければ多くなるほどパフォーマンスが低下していきます。

一方、[B]では、renderする際の変数に、@usersを渡しています。
この書き方だと、どの部分テンプレートを利用するのか探しにいく処理は一度しか実行されないため、[A]より高速にビューを描画することができます。

なお、render @users と省略して記述することも可能です。
