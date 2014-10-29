class BooksController < ApplicationController
 def show_books
  @books = Book.all
  # @books = Book.where("language_id = #{params[:l_id]} and title='#{params[:t]}'")
 end
end