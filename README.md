<<<<<<< HEAD
# README

#User model
```
|Column              |Type     |Options|
name                  string 
email                 text 
created_at            datetime precision: 6, null: false
updated_at            datetime precision: 6, null: false
password_digest       string
index_users_on_email  index  unique: true
```

#support model 
```
|Column　　　　　　　　　　|Type　　　　|Options|
 task                    string    null: false
 content                 text      null: false
 created_at              datetime  precision: 6, null: false
 updated_at              datetime  precision: 6, null: false
 index_supports_on_task  index     unique: true
 ```