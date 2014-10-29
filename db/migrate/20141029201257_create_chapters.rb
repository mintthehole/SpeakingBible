class CreateChapters < ActiveRecord::Migration
  def change
    create_table :chapters do |t|
      t.integer :book_id
      t.integer :language_id
      t.text :audio_url
      t.integer :chapter_no

      t.timestamps
    end
  end
end
