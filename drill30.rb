# Rubyのメソッドを定義するときに、様々な引数の渡し方ができます。

# 以下の機能を利用したメソッドのコードを記述してください。
# メソッドの内容は問いません。

# ①デフォルト値

# def method(default_num = 3)
#   puts default_num * 2
# end

# method()


# ②可変長引数
def method2(*default_num2)
  puts default_num2
end

method2(2, 3, 3)
method2(1000, "aaa", 50)



# ③キーワード引数
def method3(color: "red", fruit: "apple")
  puts "#{color}な果物は#{fruit}"
end

method3()
method3(color: "green", fruit: "melon")
