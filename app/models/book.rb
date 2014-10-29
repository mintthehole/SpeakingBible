class Book < ActiveRecord::Base
  attr_accessible :language_id, :no_of_chapters, :title, :book_sid
  belongs_to :language
  has_many :chapters
end
