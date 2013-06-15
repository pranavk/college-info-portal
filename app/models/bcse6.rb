class Bcse6 < ActiveRecord::Base
  attr_accessible :csesubject_id, :cseteacher_id
	belongs_to :csesubject
	belongs_to :cseteacher
end
