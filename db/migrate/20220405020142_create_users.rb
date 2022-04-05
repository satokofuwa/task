class CreateUsers < ActiveRecord::Migration[6.0]
  create_table :users do |t|
    t.string :task,null: false
    t.text :content,null: false
    t.index ["task"], name: "index_users_on_task", unique: true
  end
end
