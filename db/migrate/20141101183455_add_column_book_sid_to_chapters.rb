class AddColumnBookSidToChapters < ActiveRecord::Migration
  def change
    add_column :chapters, :book_sid, :string
  end
end
