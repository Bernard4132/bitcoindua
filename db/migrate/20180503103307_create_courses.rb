class CreateCourses < ActiveRecord::Migration[5.0]
  def change
    create_table :courses do |t|
      t.string :name
      t.string :email
      t.string :phone

      t.timestamps
    end
  end
end
