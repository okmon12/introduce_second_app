# アプリケーション名 

introduce_second_app	

# アプリケーション概要

自己紹介アプリです。

# URL

 https://introduce-second.onrender.com

# テスト用アカウント	

Email: test2@test.com  password: 123456r

Basic認証:ID: monmon  Pass: 2222

# 利用方法	

・新規登録、ログインします。

・入力画面に遷移し、入力項目に記載し、画像を選びます。

・sendボタンをクリックし一覧画面に遷移します。

・入力した内容を見て自分の脳内を整理します。
このアプリケーションでは自己紹介で伝えたい内容をまとめて入力し、本番でスムーズに自己紹介できるように考えて作りました。
 
 # アプリケーションを作成した背景

自己紹介するとき、事前に頭の中で何を言うか考えていても人前に出ると緊張して言いたいことを言えなくなったり、うまくアピールできないことがありました。

事前に言いたいことをまとめて記入し、見ることができたら心強いと考えました。

# 洗い出した要件	
[要件定義をまとめたスプレッドシートのリンクを記載。](https://docs.google.com/spreadsheets/d/1xpGR9Ici7GeqiWS5a6ZpXX-ZTzDv5hhQgiAyyc77ZFM/edit#gid=1785908763)

# 実装した機能についての画像、およびその説明
[![Image from Gyazo](https://i.gyazo.com/8674ce22c476a7d8747c25c3e3e577c9.png)](https://gyazo.com/8674ce22c476a7d8747c25c3e3e577c9)
・編集、削除機能

・トップ画面の画像をクリックすることで詳細画面に遷移する機能。

・ログイン、ログアウト機能

# 実装予定の機能

 自己紹介項目入力者が追加できる機能、項目を選べる機能、自分以外の自己紹介を閲覧できる機能。


# 開発環境 

ruby3.2.0

フロントエンド

バックエンド

テキストエディタ

# 制作時間
 17時間







## users テーブル

| Column             | Type   | Options                   |
| ------------------ | ------ | ------------------------- |
| name               | string | null: false               |
| email              | string | null: false, unique: true |
| nickname           | string | null: false               |
| encrypted_password | string | null: false               |


### Association
- has_one :comment


## comments テーブル

| Column                  | Type       | Options                           |
| ----------------------  | -----------| ----------------------------------|
| birthdate               | date       | null: false                       |
| strengths               | text       | null: false                       |
| strengths              | text       | null: false                       |
| message                 | text       | null: false                       |
| user                    | references | null: false, foreign_key: true    |

### Association
- belongs_to :user