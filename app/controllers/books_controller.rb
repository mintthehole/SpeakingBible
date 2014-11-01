class BooksController < ApplicationController
  def show_books
    @books_array = []
    lang = Language.where("UPPER(title) = '#{params[:language].upcase}'").first
    if lang
      @books_array = Book.where("language_id = #{lang.id}")
    end
  end

  def get_chapters_for_book
    chapters = Chapter.where("book_id = #{params[:book_id]}")
    render :json => chapters
  end

  def get_verse_for_chapter

  end
end
