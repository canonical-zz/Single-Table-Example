class Post < ActiveRecord::Base
  validates_presence_of :author, :title
end
