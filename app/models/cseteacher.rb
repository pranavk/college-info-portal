class Cseteacher < ActiveRecord::Base
  attr_accessible :email, :name, :phone, :photo
	has_many :bcse6
end
