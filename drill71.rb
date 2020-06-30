# 任意の文字列にcatとdogの文字が2つで１組ならTrue
# それ以外だとFalseを出力するメソッドを作りましょう。

# ※わからない場合はAPIを利用して問題を解きましょう。
# 参考URL: https://docs.ruby-lang.org/ja/search/

# 出力例：
# cat_dog("catdog") → True
# cat_dog("catcat") → False
# cat_dog("1cat1cadodog") → True

def cat_dog(str)
  if ["cat", "dog"].all? {|word| str.include?(word)}
    puts "True"
  else
    puts "False"
  end
end

str = "1cat1cadodog"
cat_dog(str)

# 参考：https://techacademy.jp/magazine/21363
