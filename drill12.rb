# Railsドリル（ビュー）

# application.html.erbの役割と、主な使い方を説明してください。

デフォルトでは、全てのビューが読み込まれるとき
application.html.erbが読み込まれる。
そのため、ヘッダーやフッターなど共通で表示させたい内容をここに記述する。


# ヘルパーメソッドのform_withについて特徴を述べてください。

# ・モデルを指定するために、「:modelオプション」を利用する
# ・submitによるデータ送信に、デフォルトでAjaxを使う（リモートフォームがオンになっている）
# ・「:class」「:id」「:data」の3つのオプションが新設され、これらは「:html」オプションで設定する必要がない
# ・モデルに基づかないフォームを生成できる
# ・テーブルにカラムがないフォームフィールドを扱える

・form_withで自動でパスを選択してくれて、HTTPメソッドを指定する必要が無い
・コントローラから渡された、ActiveRecordを継承するモデルのインスタンスが利用できる
・form_withではinputタグは用いない


# ・通常ウェブサイトを作成する際は、htmlファイルにlinkタグを記述してcssファイルを読み込みます。Railsではこの記述が必要ない理由を述べてください。

# railsには、マニフェストファイルという以下のファイルがある。
# app/assets/stylesheets/application.css
# app/assets/javascripts/application.js

# ここで、application.cssの中に、
# *= require_tree .
# *= require_self
# とあり、これにより、指定されたディレクトリの中にある全てのファイルを、
# <link>タグで指定するため、あえてhtmlファイルに記述する必要がない。

application.html.erbにstylesheet_link_tag 'application'という記述があるため、app/assets/stylesheets/application.cssが読み込まれる。

application.cssにあるrequire tree .　という記述により、同じフォルダにあるcssファイル全てが読み込まれる。
