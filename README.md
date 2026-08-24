# alt-ime-ahk-v2f

## 概要

左右 Alt キーの空打ちで IME を OFF/ON する AutoHotKey スクリプトです。

* 左 Alt キーの空打ちで IME を「英数」に切り替え
* 右 Alt キーの空打ちで IME を「かな」に切り替え
* Alt キーを押している間に他のキーを打つと通常の Alt キーとして動作
* CapsLock 無効化
* 文字列を選択後 Win + F で検索

## 修正
* Chrome や VS Code など Chromium 系アプリで、Alt 単押しで上部メニュー（右上「︙」など）にフォーカスが移るのを抑制

## 動作環境

* Windows 10 / 11

## 使用方法

Releases から alt-ime-ahk-v2f.zip をダウンロード後、好きな場所へ解凍し、exe を起動するとタスクトレイに常駐します。

終了する場合はタスクトレイのアイコンを右クリックし、「終了」をクリックしてください。

アンインストールは alt-ime-ahk-v2f.exe を削除するだけで OK です。

## 参考

[Altの空打ちで日本語入力(IME)を切り替えるツールを作った](http://www.karakaram.com/alt-ime-on-off/)

[Autohotkey v2.0のIME制御用 関数群 IMEv2.ahk](https://qiita.com/kenichiro_ayaki/items/d55005df2787da725c6f)


## ライセンス

本ソフトウェアは GNU General Public License v2.0 (GPLv2) の下で配布されます。全文は [LICENSE](LICENSE) を参照してください。

Copyright (C) 2025-2026 ryo

本スクリプトは AutoHotkey（GPLv2）を利用しており、Ahk2Exe でコンパイルした exe には AutoHotkey インタプリタが含まれます。そのため exe のみを配布する場合でも、対応するソースコードは本リポジトリ [github.com/ryobeam/alt-ime-ahk-v2f](https://github.com/ryobeam/alt-ime-ahk-v2f) で公開しています。

なお、本スクリプトは karakaram 氏の alt-ime-ahk および IMEv2.ahk を基にしています（上記「参考」を参照）。
