class Link < ActiveRecord::Base
  belongs_to :topic

  validates_length_of :title,       :in      => 3..255
  validates_length_of :slug,        :in      => 3..255
  validates_length_of :url,         :in      => 12..255
  validates_length_of :description, :minimum => 5

  validate_url :url, :check_http => false
end
