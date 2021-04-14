# README
# テーブル設計

## users テーブル
|  Column  |  Type  |  Option     |
| -------- | ------ | --------    | 
| email    | string | null:false  |
| password | string | null:false  |
| name     | string | null:false  |
| profile  | text   | null:false  |
|occupation| text   | null:false  |
|position  | text   | null:false  |
### Association
- has_many :room_prototypes
- has_many :room_comments


## comments テーブル
|  Column   |  Type    |  Option  |
|---------- |----------|----------|
|  text     |  text    |null:false|
|  user     |references|          |
|  prototype|references|          |
### Association
- belongs_to :prototype
- belongs_to :user



## prototypes テーブル
|  Column  |  Type    |  Option   |
|----------|----------|-----------|
|  title   | string   | null:false|
|catch_copy| text     | null:false|
|  concept | text     | null:false|
|  image   |          |           |
|  user    |references|           |
### Association
- belongs_to :user
- has_many :room_comment