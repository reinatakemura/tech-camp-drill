# 正の整数を入力します。その整数が、
# 10の倍数（10,20,30...）からの差が
# 2以内であるときはTrue
# それ以外はFalseと出力するメソッドを作りましょう。

# 出力例：
# near_ten(12)→True
# near_ten(17)→False
# near_ten(19)→True

def near_ten(int)
  div = int - int.round(-1)
  # if div.abs <= 2
  #   puts "True"
  # else
  #   puts "False"
  # end
  puts div.abs <= 2 ? "True" : "False"
end

int = 19
near_ten(int)

# 参考：https://docs.ruby-lang.org/ja/latest/method/Integer/i/abs.html
# 参考：https://programming-beginner-zeroichi.jp/articles/36
