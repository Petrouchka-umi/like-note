# README

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version

* System dependencies

* Configuration

* Database creation

* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

* ...

## usersテーブル
|Column|Type|Options|
|------|----|-------|
|email|string|null: false|
|password|string|null: false|
|name|string|null: false|
### Association
- has_many :messages

## messagesテーブル
|Column|Type|Options|
|------|----|-------|
|text1|text|null: false|
|text2|text|null: false|
|text3|text|null: false|
|image|string|null: false|
|user_id|integer|null: false, foreign_key: true|
### Association
- belongs_to :user
- has_one :moods

## moodsテーブル
|Column|Type|Options|
|------|----|-------|
|status|string|null: false|
|message_id|integer|null: false, foreign_key: true|
### Association
- belongs_to :message