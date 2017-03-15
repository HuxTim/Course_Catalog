class CreateInstructors < ActiveRecord::Migration[5.0]
  def change
    create_table :instructors do |t|
      t.string :comment
      t.string :last
	  t.string :email
      t.timestamps
    end
  end
end
