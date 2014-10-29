class CreateBooks < ActiveRecord::Migration
  def change
    create_table :books do |t|
      t.integer :language_id
      t.string :title
      t.integer :no_of_chapters

      t.timestamps
    end
    Book.create(:language_id=>1,:title=>"Matthew")
    Book.create(:language_id=>2,:title=>"Mark")
  end
end
