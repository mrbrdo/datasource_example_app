class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.references :blog, index: true
      t.references :author, index: true
      t.string :title
      t.text :content

      t.timestamps null: false
    end
    add_foreign_key :posts, :blogs
    add_foreign_key :posts, :authors
  end
end
