class CreateCourses < ActiveRecord::Migration[5.0]
  def change
    create_table :courses do |t|
      t.string :term
      t.string :subjects
      t.string :name
      t.string :independent_study
      t.string :requirements

      t.timestamps
    end
  end
end
