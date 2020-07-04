# 任意の文字列で
# "hi"がいくつあるか数えてその数を出力するメソッドを作りましょう。

# ※わからない場合はAPIを利用して問題を解きましょう。
# 参考URL: https://docs.ruby-lang.org/ja/search/

# 出力例：
# count_hi('abc hi ho') → 1
# count_hi('ABChi hi') → 2
# count_hi('hihi') → 2

def count_hi(str)
  puts str.scan(/hi/).length
end

count_hi('abc hi ho')
count_hi('ABChi hi')
count_hi('hihi')
