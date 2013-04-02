class CreateReplies < ActiveRecord::Migration
  def change
    create_table :replies do |t|
      t.text :content
      t.string :name
      t.integer :answer_id

      t.timestamps
    end
    add_index :answer_id
  end
end
