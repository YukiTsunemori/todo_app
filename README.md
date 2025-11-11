# Todo App

Rails APIバックエンドとVue.jsフロントエンドを使用したTodoアプリケーションです。
構築はCursorのAIにやってもらいました。。

## プロジェクト構造

```
todo_app/
├── backend/          # Rails API バックエンド
└── frontend/         # Vue.js フロントエンド
```

## セットアップ

バックエンドは `http://localhost:3000` で起動します。

### フロントエンド (Vue.js)

```bash
cd frontend
npm install
npm run dev
```

フロントエンドは `http://localhost:5173` で起動します。

## 技術スタック

### バックエンド
- Ruby on Rails (API mode) ver 8.0.2.1
- PostgreSQL
- CORS設定済み

### フロントエンド
- Vue.js ver 3.5.22 (Options API)
- Vue Router ver 4.6.3
- Pinia (状態管理)
- Vite (ビルドツール)
- ESLint + Prettier

## 開発

両方のサーバーを同時に起動して開発を進めることができます。

```bash
# ターミナル1: バックエンド
cd backend && rails server

# ターミナル2: フロントエンド
cd frontend && npm run dev
```
