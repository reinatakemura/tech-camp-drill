# 平日でないまたは休日の場合は「True」と返信し、
# 休日ではない場合は「False」と条件分岐させるメソッドを作りましょう。

# 呼び出し方：
# sleep_in(weekday, vacation)

# 出力例：
# sleep_in(false, false) → False
# sleep_in(true, false) → False
# sleep_in(false, true) → True

def sleep_in(weekday, vacation)
  if weekday != true || vacation == true
    puts "True"
  else
    puts "False"
  end
end

weekday = true
vacation = false
sleep_in(weekday, vacation)
