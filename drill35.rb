# クラスの定義は、一般的には以下の記述が用いられます。

# Userクラスの作成
# class User
#   # ブロックの内部で各種メソッドを定義
# end
# しかしながら、この記述法以外にも、Rubyにはクラスを定義する方法が用意されています。
# ①上記のclass クラス名 end;という記述を用いないで、Tweetというクラスを定義してください。

# User = Class.new do |class|
# user = User.new

#参考：http://mgi.hatenablog.com/entry/2014/03/02/094624

#①
Tweet = Class.new do
  # ブロックの内部で各種メソッドを定義
end

#②
self.class.const_set :'Tweet', Class.new do 
  # ブロックの内部で各種メソッドを定義
end


# ②①で解答した方法で、クラスを定義する際のメリットを１つ説明してください。
クラス外部にある変数を呼び出すことができるため、
クラス内で変数を定義する必要性がなくなるメリットがある。

#①のメリット
ブロックの外の変数が呼び出せる

var = 'hogehoge'

class Tweet
  # classブロックの内部からは、ブロックの外で定義されたvarは呼び出せない
  puts var
end

Tweet = Class.new do
  # Class.newブロックの内部からは、varを呼び出すことができる
  puts var
end

#②のメリット
クラスを動的に定義できる

class Product
  def self.create_new_class(class_name)
    # 引数の値に応じて、クラスを作成する
    self.class.const_set :"#{class_name}", Class.new
  end
end
