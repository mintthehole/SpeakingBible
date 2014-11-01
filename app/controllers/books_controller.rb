class BooksController < ApplicationController
  def show_books
    @books_array = []
    lang = Language.where("UPPER(title) = '#{params[:language].upcase}'").first
    if lang
      @books_array = Book.where("language_id = #{lang.id}")
    end
  end

  def get_chapters_for_book
    lang = Language.where("title = 'English'").first
    no = Chapter.where("book_sid = '#{params[:book_sid]}' and language_id= #{lang.id}").count
    render :json => (1..no)
  end

  def get_verse_for_chapter
    lang = Language.where("title = 'English'").first
    verses = Verse.where("book_sid = '#{params[:book_sid]}' and chapter_id =#{params[:chapter_no]} and language_id = #{lang.id}")
    hash = []
    verses.each_with_index do |v,i|
      hash << {:no => i+1, :id => v.id}
    end
    render :json => hash.to_json
  end

  def listen
    lang = Language.where("title = 'English'").first
    @chapter = Chapter.where("book_sid = '#{params[:book_sid]}' and language_id= #{lang.id} and chapter_no=#{params[:chapter_no]}").first
    @verse = Verse.find(params[:verse_id])
    @end_time = Verse.where("verse_no = #{@verse.verse_no.to_i+1} and book_sid = '#{params[:book_sid]}' and chapter_id =#{params[:chapter_no]} and language_id = #{lang.id}").first.try(:start_time) || "0"
  end
end
