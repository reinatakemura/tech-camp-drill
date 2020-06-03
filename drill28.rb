# 同じ結果を得るためにも、様々なコードの記述方法があります。
# 以下のコードをワンライナーに書き換える方法について、２パターン以上のコードを記述してください。

# array = [1, 2, 3, 4, 5].map do |el| 
#   if el.odd?
#     el 
#   end
# end.compact! # compact!は配列からnilを弾く

# puts array

# ①
# array = [1, 2, 3, 4, 5].map { |el|  if el.odd?;  el; end}.compact!

# ②
# array = [1, 2, 3, 4, 5].map do |el| ( if el.odd?;  el; end ) end .compact!


# array = [1, 2, 3, 4, 5].map { |el| el if el.odd? }.compact!
  #  map : 要素の数だけ繰り返しブロックを実行し、ブロックの戻り値を集めた配列を作成して返します。もしブロックの戻り値がない場合は、配列にnilを入れます。
# array = (1..5).to_a.delete_if { |el| el.even? }
  # delete_if : 要素を順番にブロックに渡して評価し、その結果が真になった要素をすべて削除します。 delete_if は常に self を返す。
# array = (1..5).to_a.delete_if(&:even?)
# array = [1, 2, 3, 4, 5].select{ |el| el.odd?}
  # select : 条件に合う要素を探して集めます。ブロック引数elに要素を入れながらブロックを繰り返し、ブロックの戻り値が真になったときの要素を集め、新しい配列にして返します

# ブロックで配列の中身を受け取るようなメソッドは&:elで処理できる。
# https://qiita.com/jnchito/items/dedb3b889ab226933ccf

puts array
