class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.references :post, index: true
      t.references :author, index: true
      t.string :comment

      t.timestamps null: false
    end
    add_foreign_key :comments, :posts
    add_foreign_key :comments, :authors
  end
end
