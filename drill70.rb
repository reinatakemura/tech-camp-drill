# 3つの整数a b cが与えられた場合、bまたはcがaとの差が１で
# かつbとｃとの数値の差が2以上の場合はTrue。
# それ以外はFalse
# と出力するメソッドを作りましょう。

# 出力例：
# close_far(1, 2, 10) → True
# close_far(1, 2, 3) → False
# close_far(4, 1, 3) → True

# ヒント
# 返り値を整数に変換する際はabsメソッドを使いましょう。

# abs
# 対象となる数値に対して「abs」メソッドを実行すると絶対値を取得することができます。すなわち正の数の場合はそのままですが負の数の場合は符号を取って正の数にした数値が取得できます。

# 1
# num = (-5).abs

def close_far(a, b, c)
  if (a-b).abs == 1 && (a-c).abs == 1 || (b-c).abs >= 2
    puts "True"
  else
    puts "False"
  end
end

close_far(1, 2, 3)
