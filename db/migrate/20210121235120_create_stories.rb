class CreateStories < ActiveRecord::Migration[6.0]
  def change
    create_table :stories do |t|
      t.text :title
      t.text :content
      t.integer :snaps
      t.integer :read_time
      t.date :date_created
      t.references :user, null: false, foreign_key: true
      t.references :topic, null: false, foreign_key: true

      t.timestamps
    end
  end
end
