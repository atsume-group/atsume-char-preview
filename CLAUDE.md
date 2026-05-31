# atsume-char-preview

会話は日本語、コード・変数名・コミットは英語。

## ミッション
株式会社アツメ開発（atsume.dev）のオフィシャルキャラクター案を並べて見せ、社内外から「どれを推すか」の意見を集めるための静的プレビューサイト。確定アイデンティティではなく社内検討材料。

## 構成
静的サイト（ビルドなし）。nginx で配信するだけ。
- `index.html` — 全案 + 経営陣議論サマリを表示する単一ファイル。先頭にパスワードゲート（client-side、sha256 of `rtt`）あり
- `images/v01_*.png 〜 v10_*.png` — Wave1（八角形+ヘッドホン路線、archive）
- `wave2/w01_*.png 〜 w10_*.png` — Wave2（メイン 10 方向: IRORI/HI/GOTOKU/WA/HACHIMAKI/HIUCHI/`:|:`/SHOJI/HOTARU/ENSO）
- `wave3/` — companion_*.png（マスコット案）と kenny_*.png
- `prompts/_common.txt` + `v01-v10.txt` — 画像生成プロンプト原文（nano-banana = gemini-2.5-flash-image）
- `Dockerfile` / `fly.toml` / `nginx.conf` — Fly.io 静的配信
- `README.md` — 「あなたの Claude Code に厳しくレビューさせて Issue で意見ください」という公募の入口

## 開発
ローカルは任意の静的サーバで確認（例: `python3 -m http.server 8080` して `index.html` を開く）。
画像を追加したら `Dockerfile` の COPY 行と `index.html` の参照を両方更新する。

## デプロイ（Fly）
- app: `atsume-char-preview` / region: `nrt` / 公開 URL: https://atsume-char-preview.fly.dev
- `fly deploy`（Dockerfile から nginx:alpine イメージをビルド）
- internal_port 8080 / auto_stop + min_machines_running=0（アイドルで停止、コスト最小）
- パスワード `rtt` は client-side ゲート（本物の認証ではない）。nginx 側で noindex/nofollow ヘッダを付与し検索除外

## 残タスク/状態
- Wave2 の 10 案から最終 1 案を決め切れていない（README で公募中）。決定後に商標出願予定
- 採用案確定後はこのプレビュー自体が役目を終える想定

## gotcha
- パスワードゲートは sha256(`rtt`) の client-side チェックのみ。機密扱い禁止（誰でも JS から突破可能）。だから nginx で noindex を徹底している
- 画像は Gemini API 生成。捨てる要素 = 既存 "Cyber Kentaroh" 由来の権利懸念（炎ヘア/サイバーゴーグル/道着/青帯/"S" マーク/顔のリアリティ）。残す要素 = ヘッドホン/集中/オレンジ #E84E1B/cream #F5EFE0 + Ink 黒
- 新画像追加時は Dockerfile の COPY 追加を忘れがち（ディレクトリ単位 COPY なので新規トップレベルフォルダは要追記）
