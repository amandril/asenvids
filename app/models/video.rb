class Video < ApplicationRecord

	acts_as_list

	scope :order_uploaded, lambda { order("created_at") }
	scope :vid_position, lambda { order ("position") }

	validates :video_url,	:presence => true,
							:uniqueness => true
	validates :title, 		:presence => true,
							:uniqueness => true,
							:length => { minimum: 8 }
end
