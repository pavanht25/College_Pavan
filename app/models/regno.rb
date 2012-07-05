class Regno < ActiveRecord::Base
	attr_accessible :regno
	belongs_to :stud
end
