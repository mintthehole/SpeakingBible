class Chapter < ActiveRecord::Base
  attr_accessible :audio_url, :book_id, :chapter_no, :language_id, :book_sid
  belongs_to :book
  belongs_to :language
  has_many :verses
end
