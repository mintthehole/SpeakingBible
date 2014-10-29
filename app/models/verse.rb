class Verse < ActiveRecord::Base
  attr_accessible :audio_time, :book_id, :chapter_id, :verse_text, :language_id
  belongs_to :book
  belongs_to :chapter
  belongs_to :language
end
