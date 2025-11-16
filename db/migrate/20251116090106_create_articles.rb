class CreateArticles < ActiveRecord::Migration[8.1]
  def change
    create_table :articles do |t|
      t.string :title
      t.string :body
      t.string :editor

      t.timestamps
    end
  end
end
