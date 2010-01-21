class CreatePosts < ActiveRecord::Migration
  def self.up
    create_table :posts do |t|
      t.string :title
      t.string :slug
      
      t.text :summary
      t.text :body
      
      t.string :sass
      
      t.boolean :published 
      
      t.timestamps
    end
  end

  def self.down
    drop_table :posts
  end
end