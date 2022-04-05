class CreateSupports < ActiveRecord::Migration[6.0]
  def change
    create_table :supports do |t|
      t.string :task,null: false
      t.text :content,null: false
      t.index ["task"], name: "index_supports_on_task", unique: true
      t.timestamps
    end
  end
end
