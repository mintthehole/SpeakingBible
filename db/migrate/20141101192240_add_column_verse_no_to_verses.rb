class AddColumnVerseNoToVerses < ActiveRecord::Migration
  def change
    add_column :verses, :verse_no, :integer
  end
end
