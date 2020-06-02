# 次のwhile文は、変数aに1を足す処理を行います。
# しかしながら、while文を終了する条件が記述されていないため、終了することなく永遠に実行され続けてしまいます。
# コードを修正して、aが100以上の時には処理が終了するようにしてください。

# a = 0

# while true do
#  puts a
#  a += 1
# end

# a = 0

# while a < 100 do
#   puts a
#   a += 1
#   # a < 100 の代わりに break if a >= 100 でもOK
# end


# 文字列を数字に変換するメソッドを答えなさい。また、そのメソッドを用いて、下記の変数strを文字列から数字に変換してください。

# str = "1"
# puts str
# puts str.to_i


# 以下の配列arrayに対してあるメソッドを実行し、最後の値"something"を配列から削除してください。

array = ["dog", "cat", "something"]
array.pop
puts array
