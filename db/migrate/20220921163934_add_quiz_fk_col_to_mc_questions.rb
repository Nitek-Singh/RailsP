class AddQuizFkColToMcQuestions < ActiveRecord::Migration[7.0]
  def change
    add_reference :mc_questions, :quiz, foreign_key: true
  end
end
