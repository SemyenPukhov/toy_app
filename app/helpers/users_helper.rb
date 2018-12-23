module UsersHelper
	# Возвращает граватар для данного пользователя.
	def gravatar_for(user)
		gravatar_id = Digest::MD5::hexdigest(user.email.downcase)
		gravatar_id = "205e460b479e2e5b48aec07710c08d50.jpg"
		gravatar_url = "https://www.gravatar.com/avatar/#{gravatar_id}"
		image_tag(gravatar_url, alt: user.name, class: "gravatar")
	end
end
