class CreateCourseSubjects < ActiveRecord::Migration[5.0]
  def change
    create_table :course_subjects do |t|
      t.references :course, foreign_key: true
      t.references :subject, foreign_key: true

      t.timestamps
    end
  end
end
