# 次のif文をunlessを用いて書き換えてください。

# if a + b > 0
#   puts "計算結果は0より大きいです"
# end

# a = -3
# b = 2

# unless a + b <= 0
#   puts "計算結果は0より大きいです"
# end


# 以下のように、果物の名前と値段が入った配列があります。
# この配列を用いて、果物の名前とそれぞれの合計額が出力される
# コードを記述してください。

fruits_price = [["apple", [200, 250, 220]], ["orange", [100, 120, 80]], ["melon", [1200, 1500]]]

# （出力）
# appleの合計金額は670円です
# orangeの合計金額は300円です
# melonの合計金額は2700円です

# i = 0
# fruits_price.each_with_index do
#   puts "#{fruits_price[i][0]}の合計金額は#{fruits_price[i][1].sum}円です"
#   i += 1
# end

fruits_price.each do |fruit|
  sum = 0
  fruit[1].each do |price|
    sum += price
  end
  puts "#{fruit[0]}の合計金額は#{sum}円です"
end
