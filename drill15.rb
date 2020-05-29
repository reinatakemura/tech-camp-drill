# 以下のコードの２行目以降を、ワンライナーで書き直してください。

# str = "is this a pen?"
# if str.include?("?")
#   puts "yes, it is."
# end

str = "is this a pen?"
puts "yes, it is." if str.include?("?")


# fizzbuzzと言われる問題があります。これは、1から100まで数を数える時に、3の倍数なら「fizz」、5の倍数なら「buzz」、ただし15の倍数なら「fizzbuzz」、それ以外はその数を答えるものです。

# 例）
# 1
# 2
# Fizz
# 4
# .
# .

# これを実現するコードを記述してください。
# ただし、elsifは使用しないものとします。

# elsifを使用
# num = 1
# while num <= 100 do
#   if num % 15 == 0
#     puts "fizzbuzz"
#   elsif num % 3 == 0
#     puts "fizz"
#   elsif num % 5 == 0
#     puts "buzz"  
#   else
#     puts num
#   end
#   num += 1
# end

# 1..upto(100){ |num| puts num%15== 0? "fizzbuzz" : num%3==0? "fizz" : num%5==0? "buzz" : num}

num = 1
while num < 101
  str = ""
  if num % 3 == 0
    str+= "fizz"
  end

  if num % 5 == 0
    str+= "buzz"
  end

  if str == ""
    str+= num.to_s
  end

  puts str
  num+= 1
end
