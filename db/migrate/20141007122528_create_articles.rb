class CreateArticles < ActiveRecord::Migration
  def change
    create_table :articles do |t|
      t.string :nom
      t.string :description

      t.timestamps
    end
  end
end
