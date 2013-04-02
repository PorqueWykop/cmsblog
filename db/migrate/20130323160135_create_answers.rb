class CreateAnswers < ActiveRecord::Migration
  def change
    create_table :answers do |t|
      t.integer :article_id
      t.text :status
      t.string :name

      t.timestamps
    end
    add_index :article_id
  end
end
