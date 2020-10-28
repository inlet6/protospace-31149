# ProtoSpaceのER図

## usersテーブル

| Column     | Type     | Option        |
| ---------- | -------- | ------------- |
| email      | string   | null: false   |
| password   | string   | null: false   |
| name       | string   | null: false   |
| profile    | text     | null: false   |
| occupation | text     | null: false   |
| position   | text     | null: false   |

## prototypesテーブル

| Column     | Type       | Option                         |
| ---------- | ---------- | ------------------------------ |
| title      | string     | null: false                    |
| catch_copy | text       | null: false                    |
| concept    | text       | null: false                    |
| image      | image      |                   　　　　　　   |
| user       | references | null: false, foreign_key: true |

## commentsテーブル

| Column    | Type       | Option                         |
| --------- | ---------- | ------------------------------ |
| text      | text       | null: false                    |
| user      | references | null: false, foreign_key: true |
| prototype | references | null: false, foreign_key: true |