class CreateQuestionOptions < ActiveRecord::Migration[5.2]
  def change
    create_table :question_options do |t|
      t.string :title
      t.text :body
      choose_question_id :int

      t.timestamps
    end
  end
end
