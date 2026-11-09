#!/bin/zsh
# クイックアクション「長辺900px・300dpi」をこのMacにインストールする
set -e
cd "$(dirname "$0")"
mkdir -p "$HOME/Library/Services"
cp -R "workflow/長辺900px・300dpi.workflow" "$HOME/Library/Services/"
# サービスメニューを更新
/System/Library/CoreServices/pbs -update 2>/dev/null || true
echo "インストールしました。Finderで画像を右クリック →「クイックアクション」→「長辺900px・300dpi」"
