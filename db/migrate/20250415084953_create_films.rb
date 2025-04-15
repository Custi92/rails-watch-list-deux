class CreateFilms < ActiveRecord::Migration[7.1]
  def change
    create_table :films do |t|
      t.string :titre
      t.string :apercu
      t.string :url_affiche
      t.decimal :note

      t.timestamps
    end
  end
end
