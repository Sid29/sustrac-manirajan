class CreatePostes < ActiveRecord::Migration
  def change
    create_table :postes do |t|
      t.string :titre
      t.text :contenu

      t.timestamps
    end
  end
end
