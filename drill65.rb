# 任意の文字列の最後の2文字を3回繰り返し
# 出力するメソッドを作りましょう。

# ※わからない場合はAPIを利用して問題を解きましょう。
# 参考URL: https://docs.ruby-lang.org/ja/search/

# 出力例：
# extra_end('Hello') → 'lololo'
# extra_end('ab') → 'ababab'
# extra_end('Hi') → 'HiHiHi'

def extra_end(word)
  puts word[-2..-1]*3
end

word = 'Hi'
extra_end(word)

# def extra_end(str)
#   char_num = str.length
#   right2 = str.slice!(char_num - 2,2)
#   puts right2*3
# end
