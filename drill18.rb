# 対話型のインターフェイスで二桁以上の整数を入力すると、十の位と一の位の数字に対して、足す、掛けるを行い、最後にそれぞれの結果を足し合わせて出力するプログラムをrubyで作成してください。

# ターミナルでの入力例

# $ ruby sample.rb

# > 二桁の整数を入力してください
# > 15

# # 1 + 5と 1 * 5をそれぞれ計算

# > 足し算結果と掛け算結果の合計値は11です

# puts "二桁の整数を入力してください"
# int = gets.to_i

# ten = (int / 10).floor
# one = int % 10

# sum = ten + one
# mul = ten * one

# total = sum + mul

# puts "十の位と一の位の数字を足すと、#{sum}"
# puts "十の位と一の位の数字を掛けると、#{mul}"
# puts "足し算結果と掛け算結果の合計値は#{total}です"

#########################################

def addition(a, b)
  a + b
end

def multiplication(a,b)
  a * b
end

def slice_num(num)
  # 10の位
  tens_place = (num / 10) % 10
  # 1の位
  ones_place = (num / 1) % 10
  return tens_place, ones_place
end

puts "二桁の整数を入力してください"
input = gets.to_i
X, Y = slice_num(input)
add_result = addition(X, Y)
multiple_result = multiplication(X, Y)
puts "足し算結果と掛け算結果の合計値は#{add_result + multiple_result}です"
# （解説）
# ある整数について、
# 整数を1で割ったものを更に10で割った計算結果の余りが1の位、
# 整数を10で割ったものを更に10で割った計算結果の余りが10の位であるという法則を利用して、
# slice_numメソッドでは10の位と1の位を取得しています。

# また、変数を定義する際に、カンマで区切ることによって、同時に複数の変数を定義することができます。
# 今回は、X, Y に10の位、1の位を同時に代入しています。
