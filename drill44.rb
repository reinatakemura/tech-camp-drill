# 以下のようなクラスがあるとします。

# class Article < ActiveRecord::Base
#   belongs_to :user, dependent: :destroy 
# end
# このとき、以下の設問にお答えください。

# 2行目の記述について、これは文法的にどのような意味か「引数」という言葉を用いて説明してください。

belongs_toはメソッドであり、:userが第一引数、dependent: :destroyが第二引数となっている。

第二引数の記述はハッシュの{}を省略した形で、{dependent: :destroy }を意味している。


# tweetsコントローラ内で、showアクションが定義されています。
# 5行目から9行目までの、respond_toブロックは、どのような処理を行なっているか、自分の言葉で説明してください。

# tweets_controller.rb
# def index
#   @tweets = Tweet.all

#   respond_to do |format|
#     format.html # index.html.erb
#     format.json { render json: @tweets }
#     format.xml  { render xml:  @tweets }
#     format.yaml { render text: @tweets.to_yaml }
#   end
# end

# formatの形式が、
# htmlのときは、index.html.erbファイルを応答するように返す。
# json形式で出力を行う時は、jsonで変換した結果を@tweetsに代入して、
# xmlの形式で出力を行う時は、xmlで変換した結果を@tweetsに代入して、
# yaml形式で出力を行う時は、yamlで変換した結果を@tweets.to_yamlに代入する。

送られてきたリクエストによって、レスポンスを振り分けている。
たとえば、/tweets.jsonというURLでページを開いた場合、json形式で変数@tweetsの中身が展開されます。

(tweets.html)

https://tech-master.s3.amazonaws.com/uploads/curriculums//c8cfab80f490a071c4ac3e540bddf2f1.png

(tweets.json)
https://tech-master.s3.amazonaws.com/uploads/curriculums//f9ee07c0a47b03ccb3034812181de7b9.png
