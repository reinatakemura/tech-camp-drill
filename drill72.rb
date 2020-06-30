# 任意の文字列が "xyz"を含み、
# xyzの前にピリオド（.）が続かない場合はTrueを出力します。
# したがって、 "xxyz"はカウントされますが、 "x.xyz"はカウントされない
# メソッドを作りましょう。

# ※わからない場合はAPIを利用して問題を解きましょう。
# 参考URL: https://docs.ruby-lang.org/ja/search/

# 出力例：
# xyz_there('abcxyz') → True
# xyz_there('abc.xyz') → False
# xyz_there('xyz.abc') → True

def xyz_there(str)
  if str.include?(".xyz")
    puts "False"
  elsif str.include?("xyz")
    puts "True"
  else
    puts "False"
  end
end

str = "abcxyz"
xyz_there(str)
