class CreateTees < ActiveRecord::Migration
  def change
    create_table :tees do |t|
      t.string :facility_id
      t.string :tee_name
      t.string :tee_color
      t.integer :golf_course_id
      t.integer :hole1
      t.integer :hole2
      t.integer :hole3

      t.timestamps
    end
  end
end
