class CreateAboutMes < ActiveRecord::Migration
  def change
    create_table :about_mes do |t|
      t.string :name
      t.text :content

      t.timestamps
    end
  end
end
