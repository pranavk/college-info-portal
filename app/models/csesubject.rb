class Csesubject < ActiveRecord::Base
  attr_accessible :code, :lecture, :name, :practical, :tutorial
	has_many :bcse6
end
