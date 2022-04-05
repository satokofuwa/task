class CreateUsers < ActiveRecord::Migration[6.0]
  def change
    create_table :users do |t|
      t.string :task
      t.text :content
      t.index ["task"], name: "index_users_on_task", unique: true
    end
  end
end
