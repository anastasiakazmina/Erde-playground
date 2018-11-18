class CreateMyVisas < ActiveRecord::Migration[5.2]
  def change
    create_table :my_visas do |t|
      t.string :title
      t.texxt :body

      t.timestamps
    end
  end
end
