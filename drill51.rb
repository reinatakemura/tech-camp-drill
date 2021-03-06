# Railsのコールバックを利用して以下の機能を実装してください。

# ①Pictweetに機能を追加する。
# ②ユーザーが投稿を行ったら、textカラムに保存されるデータの最後に「！！」を自動で追加する。

# なお解答欄には、変更したファイルのファイル名とコードを記述してください。

class Tweet < ApplicationRecord
   
  before_create :change_tweet

  def change_tweet
    self.text = text + "!!"
  end

end

上記コードのselfには、これから保存されるTweetクラスのインスタンスが代入されます。そのため、self.textとするとユーザーが入力した投稿のtextを取得することができます。

ただし、通常この場合のselfは省略可能です。
そのため
self.text = self.text + "！！"
のように右辺のselfは書かなくて大丈夫です。

ところが、その例外としてセッターメソッドを使う場合のselfは省略できないため、左辺のselfは必須となります。
