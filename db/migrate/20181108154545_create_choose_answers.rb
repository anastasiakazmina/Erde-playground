class CreateChooseAnswers < ActiveRecord::Migration[5.2]
  def change
    create_table :choose_answers do |t|
      t.string :title
      t.text :body

      t.timestamps
    end
  end
end
