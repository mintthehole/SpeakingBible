class CreateVerses < ActiveRecord::Migration
  def change
    create_table :verses do |t|
      t.integer :book_id
      t.integer :chapter_id
      t.text :verse_text
      t.string :audio_time
      t.integer :language_id

      t.timestamps
    end
  end
end
