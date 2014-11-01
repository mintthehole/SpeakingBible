class Book < ActiveRecord::Base
  attr_accessible :language_id, :no_of_chapters, :title, :book_sid,:book_no
  belongs_to :language
  has_many :chapters

  def self.create_books
    require 'json'
    b = File.read("#{Rails.public_path}/result.csv")
    JSON.parse(b)
  end
end
