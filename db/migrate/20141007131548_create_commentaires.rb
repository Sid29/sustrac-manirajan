class CreateCommentaires < ActiveRecord::Migration
  def change
    create_table :commentaires do |t|
      t.string :titre
      t.text :contenu

      t.timestamps
    end
  end
end
