class CreateLibraryCatBooks < ActiveRecord::Migration
  def change
    create_table :library_cat_books do |t|
      t.string :bookname
      t.string :author
      t.string :category

      t.timestamps null: false
    end
  end
end
