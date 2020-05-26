# HTML, CSSに関する以下の設問に答えてください。

# HTMLタグは大きく「ブロック要素」「インライン要素」に分けられます。それぞれどのような特徴があり、具体的にどんなタグが含まれるか説明してください。

# ブロック要素：一つのブロックとして認識される。一般的なブラウザでは、前後に改行が入る。div, h1~h6, p, ul, tableなど。

# インライン要素：行の一部。ブロックの中身を構成するタグ。marginは左右だけ。paddingは重なる。a, span, strong, textarea, buttonなど。

ブロック要素：
見出し・段落など一つのブロックとして主にページ全体のレイアウトを行うために使う要素。<div><p><table>など。

インライン要素：
主にブロック要素の中身として用いられる要素。文章の一部を装飾するときなどに使われる。<a><strong>など。


# classセレクタおよびidセレクタについてそれぞれの特徴を説明してください。
classセレクタ：種別名を割り当てる。同じclass名を、1ページ中に何度でも使える。

idセレクタ：固有の名前を割り当てる。同じid名は、1ページ中に一度のみ使える。


# (3)リセットcssの役割について説明してください。
# ブラウザがデフォルトで持っているCSSを打ち消すCSS。
ブラウザがもともと持っているCSSを打ち消すためのファイル。
利用することで異なるブラウザでも同じ見え方になるようスタイリングができる。


# (4)ブロック要素を横並びにさせるために、float以外にどのような方法があるか簡単に述べてください。
flexboxを使用する。

・display: flex; を使う

・display: inline-block; を使う

・display:inline; を使う


# webフォントとは何か、特徴と使用するメリットを簡潔に述べてください。
# あらかじめサーバ上に置かれたフォントやインターネット上で提供されているフォントを呼び出し、表示するCSS3から策定された技術。
webサーバー上で提供されているフォントファイルのこと。
どの端末からアクセスしたときでも、同じフォントを表示させることができる。
