class CreateBlogs < ActiveRecord::Migration[7.0]
  def change
    create_table :blogs do |t|
      t.string :title
      t.text :content, limit: 16777215
      t.integer :category, default: 0
      t.boolean :active, default: true
      t.timestamps
    end
  end
end
