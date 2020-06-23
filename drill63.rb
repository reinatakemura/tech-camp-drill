# 1,2,3が全て配列内に入っていれば「True」それ以外は「False」と
# 出力されるメソッドを作りましょう。

# ※わからない場合はAPIを利用して問題を解きましょう。
# 参考URL: https://docs.ruby-lang.org/ja/search/

# 呼び出し方
# array123(nums)

# 出力例
# array123([1, 1, 2, 3, 1]) → True
# array123([1, 1, 2, 4, 1]) → False
# array123([1, 1, 2, 1, 2, 3]) → True

def array123(array)
  num = [1, 2, 3]
  if array.all? { |i| num.include?(i) }
    puts "True"
  else
    puts "False"
  end
end

array = [1, 1, 2, 1, 2, 3]
array123(array)

参考：https://docs.ruby-lang.org/ja/latest/method/Enumerable/i/all=3f.html
