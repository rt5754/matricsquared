class AddQuestionToQuestions < ActiveRecord::Migration
  def change
    add_column :questions, :question, :string
  end
end
