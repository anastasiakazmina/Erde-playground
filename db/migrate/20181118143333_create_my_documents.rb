class CreateMyDocuments < ActiveRecord::Migration[5.2]
  def change
    create_table :my_documents do |t|
      t.string :title
      t.text :body

      t.timestamps
    end
  end
end
