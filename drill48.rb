# class Impression < ActiveRecord::Base
#   VALID_YOUTUBE_URL_REGEX = ???
#   validates :url, presence: true, format: { with: VALID_YOUTUBE_URL_REGEX }
# end
# 2行目のvalidationを完成させてください。ただし条件は、「youtube」という文字が投稿された文字列に含まれていることを確かめることとします。

/youtube/

VALID_YOUTUBE_URL_REGEX = /\A.*youtube.*\z/
validates :text, presence: true, format: { with: VALID_YOUTUBE_URL_REGEX }
（補足）
正規表現を使ってバリデーションを作成する簡単なサンプルです。
\Aや\zをつける理由や「.*」の意味を確認しておきましょう。

https://blog.codecamp.jp/ruby-regex
https://qiita.com/jnchito/items/ea7832df6f64a9034872
