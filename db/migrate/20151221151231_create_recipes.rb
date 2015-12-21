class CreateRecipes < ActiveRecord::Migration
  def change
    create_table :recipes do |t|
      t.string :title
      t.string :preferences
      t.string :type
      t.string :cuisine
      t.string :servings
      t.string :time
      t.string :difficulty
      t.text :body
      t.timestamps null: false
    end
    add_reference :recipes, :user, index: true
  end
end
