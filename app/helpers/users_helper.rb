module UsersHelper
  def gravatar_for(user)
    gravatar_id = Digest::MD5::hexdigest(user.email.downcase)
    gravata_url = "https://secure.gravatar.com/avatar#{gravatar_id}"
    image_tag(gravata_url, alt: user.name, class: "gravatar")
  end
end
