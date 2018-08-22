class CreateInstructors < ActiveRecord::Migration[5.2]
  def change
    create_table :instructors do |t|
      t.string :fname , null: false
      t.string :lname , null: false
      t.string  :email , null: false
      t.string  :password , null: false
      t.integer :age , null: false
      t.integer :salary , null: false
      t.string :highest_edu , null: false
      t.integer :cohort_id , null: false
      t.boolean :is_admin , null: false

      t.timestamps
    end
  end
end
