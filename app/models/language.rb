class Language < ActiveRecord::Base
  attr_accessible :title
  has_many :books
end
