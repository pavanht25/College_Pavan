class CreateStuds < ActiveRecord::Migration
  def change
    create_table :studs do |t|
      t.string :stud_name
      t.string :stud_percentage
 	  t.references :hod
      t.timestamps
    end
  end
end
