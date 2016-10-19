class VimeoEmbed < ActiveRecord::Migration[5.0]
  def up
  	create_table :vimeo_embed do |t|
		t.string "name"
		t.string "embed"
  	end
  end

  def down
  	drop_table :vimeo_embed
  end
end
