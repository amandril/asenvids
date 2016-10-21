class CreateVideos < ActiveRecord::Migration[5.0]
  def change
    create_table :videos do |t|
    	t.string "name", :default => "", :null => false
    	t.string "video_url", :default => "http://", :null => false
    	t.text "description"
    	t.integer "position"
    	t.boolean "visible", :default => false

      t.timestamps
    end
  end
end
