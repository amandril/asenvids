class Page < ActiveRecord::Migration[5.0]
  def up
  	create_table :pages do |s|
  		s.string "name"
  		s.string "permalink"
  		s.boolean "visible", :default => false
  	end
  	add_index("pages", "permalink")
  end

  def down
  	drop_table :pages
  end
end
