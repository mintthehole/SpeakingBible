class AddColumnBookSidToVerses < ActiveRecord::Migration
  def change
    add_column :verses, :book_sid, :string
  end
end
