class CreateTopics < ActiveRecord::Migration[5.0]
  def change
    create_table :topics do |t|
      t.string :name
      t.text :content
      t.string :category

      t.timestamps
    end
  end
end
