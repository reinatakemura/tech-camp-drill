# 以下の手順でRailsアプリケーションを作成し、仕様にしたがって機能を追加してください。

# > cd ~/projects/
# > rails new reverse-app -d mysql
# > cd reverse-app/
# > rails g scaffold item name:string
# > bundle exec rake db:create
# > bundle exec rake db:migrate

# 仕様
# ・登録されたitemのnameが回文（上から読んでも下から読んでも同じになる文）なのかを判定するヘルパーメソッドpalindrome?を作成してください。

# ・ヘルパーメソッドは、回文だった時は「回文です」そうでない時は「回文ではありません」という文字列を返すものとします。

# ・一覧表示画面で、以下のようにその結果を表示させるようにしてください。
