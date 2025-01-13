class CreateBookmarks < ActiveRecord::Migration[7.1]
  def change
    create_table :bookmarks do |t|
      t.text :comment
      t.string :recipe_id
      t.string :category_id

      t.timestamps
    end
  end
end
