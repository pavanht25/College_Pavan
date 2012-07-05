class CreateHods < ActiveRecord::Migration
  def change
    create_table :hods do |t|
      t.string :dept_name
      t.string :hod_name

      t.timestamps
    end
  end
end
