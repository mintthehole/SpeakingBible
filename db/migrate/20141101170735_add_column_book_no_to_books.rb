class AddColumnBookNoToBooks < ActiveRecord::Migration
  def change
    add_column :books, :book_no, :integer
  end
end
