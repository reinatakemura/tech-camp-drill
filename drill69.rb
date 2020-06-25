# 警察がネズミ取りをしています。
# 速度が60以下の場合、出力は0になります。
# 速度が61以上80以下の場合、出力は1になります。
# 速度が81以上の場合、出力は2になります。
# 出力を計算するためのコードを作成し、
# int値としてエンコードします。
# 0=チケットなし、1 =小チケット、2 =大チケット。
# と出力するメソッドを作りましょう。
# アタナの誕生日の日だけ速度制限が5倍大きくなります。
# 速度は小数点以下も有効ですが、判定の際は小数点一桁で四捨五入して整数にしてください。

# 呼び出し方：
# caught_speeding(speed, is_birthday)

# 出力例：
# caught_speeding(60, False) → 0
# caught_speeding(65, False) → 1
# caught_speeding(65, True) → 0

def caught_speeding(speed, birthday)
  if speed <= 60 || (speed <= 60*5 && birthday)
    puts 0
  elsif 61 <= speed && speed <= 80 || (60*5 < speed && speed <= 80*5 && birthday)
    puts 1
  else 81 <= speed
    puts 2
  end
end

speed = 401.round
birthday = true
caught_speeding(speed, birthday)
