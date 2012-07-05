class StudsSubjects < ActiveRecord::Migration
 def change
    create_table :studs_subjects , :id => false do |t|
    t.integer "stud_id"
    t.integer "subject_id"
    end
  
  end
end
