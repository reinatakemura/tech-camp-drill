# Rubyでは:（コロン）で始まるシンボルと呼ばれるものがありますが、
# これはどういったものか、
# またシンボルを使うことのメリットは何か解説してください。

シンボルは、ハッシュのキーとして、
キーワード引数を使う際にコロン記号「：」を後置する。

メリットは、
・メモリ消費が少ない
・可読性が上がる
・処理が高速になる

Rubyの内部では整数として管理されているが、
文字列のように呼び出せるオブジェクト。
同じシンボルであれば同一のオブジェクトを参照するので、
いくつ作成しても必要なメモリ容量は変わらない。
また、文字列よりも高速に処理することができる。

参考：https://www.sejuku.net/blog/13094

# Railsアプリケーションではバリデーションに引っかかると
# 保存がされない仕組みがあります。
# 以下のコードで、保存されるべきtweetがなぜか保存されず
# ロールバックされてしまう場合、
# どうすればその理由を確認できるか説明してください。

# tweet = Tweet.new(tweet_params)
# if tweet.save
#   some_method(tweet)
# end

# binding.pryを使用して、
# 変数に情報が入っているかを確認する。

①1行目と2行の間にbinding.pryを記載し止める。
②pryの中で、tweet.saveを実行する。
③tweet.errorsを実行すると保存の際に出たエラーの内容が表示される。