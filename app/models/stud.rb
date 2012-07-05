class Stud < ActiveRecord::Base
attr_accessible :stud_name,:stud_percentage
has_one :regno
belongs_to :hod
has_and_belongs_to_many :subjects
end
