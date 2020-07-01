# 任意の文字列に"code"が、どこかに現れるかを回数を返して数えて
# その数を出力するメソッドを作りましょう。
# ただし、'd'には任意の文字が使用可能です、
# 例えば"cope"と "cooe"はカウントされます。

# ヒント:正規表現を使用してみましょう。

# 出力例：
# count_coxe('aaacodebbb') → 1
# count_coxe('codexxcode') → 2
# count_coxe('cozexxcope') → 2

def count_coxe(str)
  count_str = str.scan(/co.e/).length
  puts count_str
end

str = 'codexxcode'
count_coxe(str)

# 参考：https://www.javadrive.jp/ruby/regex/repeat/index1.html
# 参考：https://docs.ruby-lang.org/ja/latest/method/String/i/scan.html
