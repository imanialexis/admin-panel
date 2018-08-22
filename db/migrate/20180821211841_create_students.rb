class CreateStudents < ActiveRecord::Migration[5.2]
  def change
    create_table :students do |t|
      t.string :fname , null: false
      t.string :lname , null: false
      t.integer :age , null: false
      t.boolean :is_admin , null: false
      t.integer :cohort_id , null: false
      t.integer :course_id , null: false
      t.string  :password , null: false

      t.timestamps
    end
  end
end
