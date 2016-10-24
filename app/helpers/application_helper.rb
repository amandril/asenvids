module ApplicationHelper

	def video_embed(video_url)
  		if video_url[/youtu\.be\/([^\?]*)/]
    		youtube_id = $1
  		elsif video_url[/^.*((v\/)|(embed\/)|(watch\?))\??v?=?([^\&\?]*).*/]
    		# Regex from # http://stackoverflow.com/questions/3452546/javascript-regex-how-to-get-youtube-video-id-from-url/4811367#4811367
    		youtube_id = $5
    	elsif video_url[/^https:\/\/(?:.*?)\.?vimeo\.com\/(watch\?[^#]*v=(\w+)|(\d+)).*$/] # video_url[/^http:\/\/www\.vimeo\.com\/(\d+)/]
    		#vimeo_id = vimeo_regex.match(video_url)[1]
    		vimeo_id = $3
  		end

  		if youtube_id
  			raw(%Q{<iframe title="YouTube video player" src="http://www.youtube.com/embed/#{ youtube_id }" width="560" height="315" frameborder="0" allowfullscreen></iframe>})
  		elsif vimeo_id
  			raw(%Q{<iframe src="https://player.vimeo.com/video/#{vimeo_id}?portrait=0" width="560" height="315" frameborder="0" webkitallowfullscreen mozallowfullscreen allowfullscreen></iframe>})
  		else

		end
	end

end
