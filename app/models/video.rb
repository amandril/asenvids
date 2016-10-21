class Video < ApplicationRecord
	scope :order_uploaded, lambda { order("created_at") }

	validates :video_url,	:presence => true,
							:uniqueness => true
	validates :title, 		:presence => true,
							:uniqueness => true,
							:length => { minimum: 8 }
end
