class CreateAdmins < ActiveRecord::Migration[5.2]
  def change
    create_table :admins do |t|
      t.string :name
      t.string :email
      t.string :password
      t.boolean :is_admin

      t.timestamps
    end
  end
end
