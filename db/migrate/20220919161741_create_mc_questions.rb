class CreateMcQuestions < ActiveRecord::Migration[7.0]
  def change
    create_table :mc_questions do |t|
      t.string :question
      t.string :answer
      t.string :distractor_1
      t.string :distractor_2

      t.timestamps
    end
  end
end
