# Railsを使わずにHTML, CSSでサイトを作成する際は、HTMLファイルからlinkタグを使ってCSSファイルを読み込む設定を記述します。

# しかし、Railsの場合各ビューでCSSの読み込みの設定を書く必要はありません。

# ①なぜ必要なCSSやJavaScriptが読み込まれるのか、「アセットパイプライン」「Sprockets」「マニフェストファイル」という用語を用いて説明してください。

#参考：http://ruby.studio-kingdom.com/rails/guides/asset_pipeline#0

アセットパイプライン：
javaScriptとCSSの連結・圧縮をフレームワークとつなぎ合わせる機能を提供。
Sprockets：
指定されたファイルを読み込み、必要であればそれらを1つのファイルに連結、圧縮の処理を行う。
マニフェストファイル：
ディレクティブを含みます。 ディレクティブはSprocketsにどのファイルが必要で、 どの順番で一つのCSSまたはjavaScriptにまとめるかを指示する。

# マニフェストファイルと呼ばれる
# app/assets/javascripts/application.jsや
# app/assets/stylesheets/application.css(scss)内において、
# require_treeディレクティブを使用する。
# それによって、
# Sprocketsに指定したディレクトリ内から、 再帰的に全てのjavaScript/cssファイルを対象として、出力するように指示する。
# そして、アセットパイプラインによって、
# 全てのjavaScriptファイルを1つの.jsファイルに、 また、全てのCSSファイルを1つの.cssファイルに連結する.

# これにより、
# 各ビューでCSSの読み込みの設定を書く必要はない。

Railsにはアセットパイプラインという仕組みが用意されており、
複数のCSSやJavaScriptファイルは一つにまとめて圧縮される。
この機能はSprocketsというGemが担っている。

各ビューが表示される際、必ずapplication.html.erbが読み込まれるが、
その中にstylesheet_link_tagの記述があり、
それによってapp/assets/stylesheets/application.cssが呼び出される。

application.cssはマニフェストファイルといわれ、
このファイルから各CSSファイルを呼び出す仕組みになっている。

JavaScriptも同様。


# ②①を踏まえると、作成したCSSやJavaScriptのファイルはどこに配置すれば良いか説明してください。

app/assets/javascripts/や、
app/assets/stylesheets/内に配置する。
