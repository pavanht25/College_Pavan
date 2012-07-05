class Hod < ActiveRecord::Base
	attr_accessible :dept_name,:hod_name
has_many :studs
end
