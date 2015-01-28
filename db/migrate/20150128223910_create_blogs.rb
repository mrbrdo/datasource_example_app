class CreateBlogs < ActiveRecord::Migration
  def change
    create_table :blogs do |t|
      t.string :title
      t.references :owner, index: true

      t.timestamps null: false
    end
    add_foreign_key :blogs, :owners
  end
end
