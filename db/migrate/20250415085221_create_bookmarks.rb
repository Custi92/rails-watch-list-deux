class CreateBookmarks < ActiveRecord::Migration[7.1]
  def change
    create_table :bookmarks do |t|
      t.references :film, null: false, foreign_key: true
      t.references :list, null: false, foreign_key: true
      t.string :commentaire

      t.timestamps
    end
  end
end
