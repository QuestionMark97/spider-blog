module ApplicationHelper
	def gravatar_for(user, options = { size: 80})
		gravatar_id = Digest::MD5::hexdigest(user.email.downcase)
		size = options[:size]
		gravatar_url = "https://secure.gravatar.com/avatar/#{gravatar_id}?s=#{size}"
		if gravatar?(user.email)
			image_tag(gravatar_url, alt: user.username, class: 'img-circle')
		else
			image_tag(user.img, class: 'img-circle', style: "height: #{size}px; width: #{size}px")
		end
	end

	private
	# I took this method off the web:
	# Is there a Gravatar for this email? Optionally specify :rating and :timeout.
	def gravatar?(email, options = {})
	  hash = Digest::MD5.hexdigest(email.to_s.downcase)
	  options = { :rating => 'pg', :timeout => 2 }.merge(options)
	  http = Net::HTTP.new('www.gravatar.com', 80)
	  http.read_timeout = options[:timeout]
	  response = http.request_head("/avatar/#{hash}?rating=#{options[:rating]}&default=http://gravatar.com/avatar")
	  response.code != '302'
	rescue StandardError, Timeout::Error
	  true  # Don't show "no gravatar" if the service is down or slow
	end
end