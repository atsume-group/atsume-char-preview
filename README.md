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

## 10 案の概要

| # | 名前 | キーアイデア |
|---|---|---|
| V01 | Base Atsume | 八角形頭 + M額 + ヘッドホン、デフォルトの立ち姿 |
| V02 | Focused | 集中の 3 ドット、親しみ寄り |
| V03 | Side Walk | 横向き歩行、動きの表現 |
| V04 | Sticker | 白フチ Die-cut、SNS アバター向け |
| V05 | Minimal Line | 線画のみ、Linear/Vercel 系 |
| V06 | Filled (poster) | オレンジ充填、LP ヒーロー向け |
| V07 | Pixel-Vector | レトロ感をベクター昇格 |
| V08 | Working | 道具持ち、Craft 事業象徴 |
| V09 | Group of Three | "集める" を 3 体で表現 |
| V10 | Monogram | M 字とキャラ一体、Stripe S / Notion N 系 |

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
