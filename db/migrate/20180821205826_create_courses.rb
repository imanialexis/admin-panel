class CreateCourses < ActiveRecord::Migration[5.2]
  def change
    create_table :courses do |t|
      t.string :name , null: false
      t.text :description, null: false
      t.integer :total_class_hours , null: false

      t.timestamps
    end
  end
end
