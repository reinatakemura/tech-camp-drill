# FizzBuzzという言葉遊びがあります。1から数を数えていく際に、それが3の倍数だったら「Fizz」, 5の倍数だったら「Buzz」と言う、というものです。ただし、15の倍数の時は「FizzBuzz」と言います。

# 例） 1, 2, Fizz, 4, Buzz, Fizz ,,,,

# このFizzBuzzを再現できるメソッドを作成してください。
# ただし、いくつまでカウントするか、引数で指定できるものとします。

def fizzbuzz(max_num)
  #①
  # puts 1.upto(max_num){ |num| puts num % 15 == 0?  "FizzBuzz" : num % 3 == 0? "Fizz" : num % 5 == 0? "Buzz" : num }

  #②
  # (1..max_num).each do |num|
  #   if num % 15 == 0
  #     puts "FizzBuzz"
  #   elsif num % 5 == 0
  #     puts "Buzz"
  #   elsif num % 3 == 0
  #     puts "Fizz"
  #   else
  #     puts num
  #   end
  # end

  #③
  # num = 1
  # while num <= max_num do
  #   if num % 15 == 0
  #     puts "FizzBuzz"
  #   elsif num % 5 == 0
  #     puts "Buzz"
  #   elsif num % 3 == 0
  #     puts "Fizz"
  #   else
  #     puts num
  #   end
  #   num += 1
  # end

  #④
  num = 1
  while num <= max_num do
    puts num % 15 == 0? "FizzBuzz" : num % 5 == 0 ? "Buzz" : num % 3 == 0? "Fizz" : num
    num += 1
  end
end

puts "FizzBuzzをいくつまでカウントしますか？"
n = gets.to_i
puts "-----------------"
fizzbuzz(n)
