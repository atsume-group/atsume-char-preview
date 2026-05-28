# Atsume Character Preview

株式会社アツメ開発（atsume.dev）のオフィシャルキャラクター 10 案。

**👀 ブラウザでサクッと見たい**: https://atsume-char-preview.fly.dev （pw: `rtt`）

---

## 📣 これを見てる人へのお願い

決め手がなくて困ってる。あんたの Claude Code に **厳しくレビューさせて意見ほしい**。

### やり方

```bash
git clone https://github.com/atsume-group/atsume-char-preview.git
cd atsume-char-preview
claude
```

Claude Code 開いたら、こう投げて:

> このリポにあるアツメ開発のキャラ 10 案を、ブランディング・著作権・経営戦略の観点から **遠慮なく厳しくレビュー**して。良い点・致命的な弱点・どれを推すか・なぜか、忌憚なく。

返ってきた意見は、**Issue** に投げてくれるとめちゃ助かる:
👉 https://github.com/atsume-group/atsume-char-preview/issues/new

または X / Slack で直接 awatatgr まで。

---

## 何が入ってる

| ファイル | 中身 |
|---|---|
| `index.html` | 10 案 + 経営陣議論サマリ表示 |
| `images/v01_base.png` 〜 `v10_monogram.png` | nano-banana (Gemini 2.5 Flash Image) 生成画像 |
| `prompts/_common.txt` + `v01-v10.txt` | 各案の生成プロンプト原文 |
| `Dockerfile` / `fly.toml` / `nginx.conf` | Fly.io 静的配信 |

## コンセプト —「囲む場所」

ATSUME = 集める = 人が**囲む**こと。囲炉裏のように、火を中心に人が集まる場所。
- 八角形 = 囲炉裏のかたち / オレンジ #E84E1B = 火の色 / cream #F5EFE0 = 漆喰・畳 / ヘッドホン = 集中を囲むかたち

## Wave 2 — これだ、と言える 10 方向（メイン）

全部、方向性が違う。全部、囲む場所のかたち。

| # | 名前 | キーアイデア |
|---|---|---|
| W01 | IRORI | 囲炉裏を真上から。場所をブランドにする |
| W02 | HI | 一筆書きの炎ひとつ。最小・最強のアイコン |
| W03 | GOTOKU | 五徳の家紋化。和モダンの紋章 |
| W04 | WA | 火を囲む 8 人。"集める" の物語 |
| W05 | HACHIMAKI | 顔のない鉢巻き。決意の純化 |
| W06 | HIUCHI | 火打石の火花。起業の瞬間 |
| W07 | `:\|:` | ヘッドホン= ASCII 文字。テック文化 |
| W08 | SHOJI | 障子越しの人影。気配としての存在 |
| W09 | HOTARU | 蛍火の星座。散る火が集まる |
| W10 | ENSO | 墨の円+火。禅と起業 |

`wave2/w01_irori.png` 〜 `wave2/w10_enso.png`

## Wave 1 — archive（最初の方向性）

八角形+ヘッドホンのキャラ路線 V01-V10 は `images/` に保管。

## 引き継ぎたい「気持ち」と捨てるもの

**残す**: ヘッドホン / 集中 / オレンジ #E84E1B / cream + Ink 黒

**捨てる（既存 "Cyber Kentaroh" 由来の権利懸念）**: 炎ヘア / サイバーゴーグル / 道着 / 青帯 / "S" マーク / 顔のリアリティ

## ブランド情報

- **会社**: 株式会社アツメ開発（atsume.dev、2026-05 登記、東京丸の内）
- **3 サービス**: コンサル（月10万）/ 高速サービス開発（560万・6.5ヶ月）/ Craft（テイラーメイド月300万〜）
- **ミッション**: 技術と人で、前に進める

## レビュー観点のヒント（無視してOK）

- **ブランディング**: 中規模企業（10-50名）経営者 40-60 代に幼稚に見えないか
- **権利**: 既存 IP（Atom / Doraemon / etc）との被り、Cyber Kentaroh からの抽象化十分か
- **視覚**: 16px favicon でも識別できるか、大判印刷で破綻しないか
- **物語**: 3 サービス（コンサル/高速開発/Craft）のどれと相性が良いか
- **拡張性**: 表情/ポーズ/色違いの展開コスト

---

## License / 権利

画像は Gemini API（nano-banana = gemini-2.5-flash-image）で生成。Google の生成 AI 利用規約上、商用利用は許諾。最終採用案については商標出願予定。

このリポの内容は **アツメ開発の社内検討材料** であり、現時点で確定したアイデンティティではない。
