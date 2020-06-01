# 今日の曜日を表示するコードを記述してください。

# ただし、金曜日だった場合だけ以下のように表示の内容を変えてください。

# （出力内容）
# 「今日は月曜日」
# 「今日は金曜日だ！！」

# 参考：https://techacademy.jp/magazine/21762, https://teratail.com/questions/3842

require "date"
today = Date.today.wday
# today = Date.new(2020, 06, 05)
if today == 5
  puts "今日は#{%w( 日 月 火 水 木 金 土 )[today]}曜日だ！！" # %w() : 要素が文字列の配列(空白区切り)
  # puts "今日は#{%w( 日 月 火 水 木 金 土 )[today]}曜日だ！！"
else
  puts "今日は#{%w( 日 月 火 水 木 金 土 )[today]}曜日"
  # puts "今日は#{%w( 日 月 火 水 木 金 土 )[today]}曜日だ"
end

####################################

# require "date"

# day = Date.today.wday
# days = ["日曜日", "月曜日", "火曜日", "水曜日", "木曜日", "金曜日", "土曜日"]

# if day == 5
#   puts "今日は#{days[day]}だ！！！"
# else
#   puts "今日は#{days[day]}"
# end
