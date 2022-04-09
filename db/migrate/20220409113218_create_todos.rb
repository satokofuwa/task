class CreateTodos < ActiveRecord::Migration[6.0]
  def change
    create_table :todos do |t|
        t.string "title"
        t.text "content"
        t.index ["title"], name: "index_todos_on_title", unique: true
        t.timestamps
    end
  end
end
