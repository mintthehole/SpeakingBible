class AddColumnBookSidToBooks < ActiveRecord::Migration
  def change
    add_column :books, :book_sid, :string
  end
end
