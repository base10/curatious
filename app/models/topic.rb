class Topic < ActiveRecord::Base
  has_many :links
  
  validates_length_of :name, :in => 3..255
  validates_length_of :slug, :in => 3..255

  validates_length_of :description, :minimum => 5
end
