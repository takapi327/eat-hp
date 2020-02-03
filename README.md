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


## owners????

|Column|Type|Options|
|------|----|-------|
|e-mail|string|null:false|
|password|string|null:false|
|re_password|string|null:false|

### Association

## menus????

|Column|Type|Options|
|------|----|-------|
|name|string|null:false|
|price|integer|null:false|
|content|text|null:false|

### Association
- has_many :images

## images????

|Column|Type|Options|
|------|----|-------|
|menu_id|references|null:false|
|image|text|null:false|

### Association
- belongs_to :menu