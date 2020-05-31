# 以下のハッシュから値だけを取り出し、配列にしてください。ただし、hashクラスのvaluesメソッドは利用しないこととします。

attr = {name: "田中", age: 27, height: 180, weight: 75}

# array = []
#   array << attr[:name]
#   array << attr[:age]
#   array << attr[:height]
#   array << attr[:weight]
# puts array

values = []
attr.each do |key, value|
  values << value
end
puts values


# Railsのwhereメソッドとfind_byメソッドは、どちらも特定のテーブルから条件に合うレコードを検索するためのメソッドです。
# 両者の違いについて説明してください。

# where：一つの情報で複数のデータを取りたい場合。
# find_by：「id」がわからないが、それ以外の情報が分かっている。一つだけ取りたい場合。

両メソッドには取得して来るレコードの件数に違いがあります。

whereメソッドが条件に合うレコードを全て取得して来るのに対し、
find_byメソッドは条件に合うレコードのうち、最初のレコード(idの値が小さいもの)1件だけを取得してきます。
