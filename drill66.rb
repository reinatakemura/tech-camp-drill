# 任意の文字列の最初の2文字のみ
# 出力するメソッドを作りましょう。
# 文字列が2文字以下だと文字列をそのまま返します。
# 例えば"x"は"x"を、空文字""は""を返します。

# ※わからない場合はAPIを利用して問題を解きましょう。
# 参考URL: https://docs.ruby-lang.org/ja/search/

# 出力例：
# 入力した最初の2文字のみ出す
# first_two('Hello') → 'He'
# first_two('abcdefg') → 'ab'
# first_two('ab') → 'ab'

def first_two(word)
  puts word[0..1]
end

word = 'ab'
first_two(word)

# def first_two(str)
#   if str.length >= 2
#     left2 = str.slice!(0, 2)
#     puts left2
#   else
#     puts str
#   end
# end
