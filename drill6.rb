# 後輩の太郎くんが、下記のコードを読んでいますが今ひとつ内容を
# 理解できないようです。

# 以下の3点について解説してください。

(1)コードが実行される順番がよくわからない
メソッド定義の下、配列オブジェクトを生成してwhileの該当するメソッドを実行する。

・コードは基本的に上から順に実行される。
ただし、最初はメソッドの定義がしてあるだけなので、54行目から実行される。

・56行目からのループ内で、選択された数字により各メソッドが呼ばれる。


(2)メソッドを実行することで、変数posts, a_postsにどのような値が代入されるのかがわからない。
posts：メソッドを実行して生成したデータが代入される
a_posts：仮引数として、メソッド実行時に必要な数字が代入される

・54行目（posts = []             # 配列オブジェクトpostsの生成）
で宣言しているpostsという配列に全てのレビュー情報を格納しようとしています。

・ただし、Rubyの場合メソッドの内側と外側ではスコープが異なりますので、メソッド内からpostsには直接アクセスすることができません。

・そのため、各メソッドに引数としてpostsを渡して、その返り値をpostsに再代入しています。

・各メソッドでは、仮引数がa_postsという名前で定義されています。そのため、渡されたpostsをa_postsという変数にコピーして、メソッド内で使用することができます。


(3)post_reviewメソッドが何をしているのかがわからない
レビューを書くメソッドであり、データをユーザーに入力させるもの。

・65行目（posts = post_review(posts)  # post_reviewメソッドの呼び出し）
でpost_review(posts)という記述があります。
そのため、今までのレビュー全件が入ったpostsという配列が引数で渡されてpost_reviewが呼び出されます。

・仮引数の名前はa_postsなので、post_reviewのメソッド内ではa_postsという配列にレビュー全件が入っていることになります。

・メソッドの中で、postというハッシュを定義し、その中に最新のレビュー情報を格納します。

・最後にa_postsにpostを追加し、その結果を返り値として返しています。
