class Bookmark < ActiveRecord::Base
  attr_accessible :date, :name, :url
  validates :name, :presence => true
  validates :url, :format => URI::regexp(%w(http https))
end
