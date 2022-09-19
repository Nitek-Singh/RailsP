class CreateExaminations < ActiveRecord::Migration[7.0]
  def change
    create_table :examinations do |t|
      t.string :full_name
      t.string :email
      t.string :department
      t.string :college_name
      t.integer :mobile_number

      t.timestamps
    end
  end
end
