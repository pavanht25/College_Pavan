class CreateRegnos < ActiveRecord::Migration
  def change
    create_table :regnos do |t|
      t.string :regno
	  t.references :stud
      t.timestamps
    end
  end
end
