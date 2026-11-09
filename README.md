# kindle-amazon-900px-300dpi

Kindle / Amazon 用に、画像の**長辺を900px**、**解像度を300dpi**にして、デスクトップの `900px` フォルダに保存する macOS のクイックアクション（Automator）です。元の画像は変更しません。

## インストール

```zsh
git clone https://github.com/m0607366-bot/kindle-amazon-900px-300dpi.git
cd kindle-amazon-900px-300dpi
./install.sh
```

メニューに出ないときは、`~/Library/Services/長辺900px・300dpi.workflow` を Automator で開いて ⌘S で保存し直してください。
それでも出なければ、画像を右クリック →「クイックアクション」→「カスタマイズ…」でチェックを入れます。

## 使い方

Finder で画像を選び（複数可）、右クリック →「クイックアクション」→「長辺900px・300dpi」。
`~/Desktop/900px/` に同じファイル名で保存されます（同名ファイルは上書き）。

## 中身

| ファイル | 内容 |
|---|---|
| `workflow/長辺900px・300dpi.workflow` | クイックアクション本体（入力：Finderのイメージファイル、「シェルスクリプトを実行」1つ） |
| `resize-900px-300dpi.zsh` | ワークフローに入っているスクリプトと同じもの。ターミナルから `./resize-900px-300dpi.zsh 画像...` でも使える |
| `install.sh` | `~/Library/Services` へコピーするインストーラ |

処理は macOS 標準の `sips` です。

```zsh
sips -Z 900 -s dpiWidth 300 -s dpiHeight 300 入力 --out ~/Desktop/900px/ファイル名
```

- `-Z 900`：縦横比を保って長辺を900pxに（900px未満の画像は拡大される）
- dpi は印刷用のメタデータで、ピクセル数は変わりません
