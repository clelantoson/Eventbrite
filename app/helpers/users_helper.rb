module UsersHelper
  def show_avatar(user)
    if user.avatar.attached?
      image_tag user.avatar, alt: 'avatar'
    else
      image_tag 'default_avatar.jpeg'
    end
  end
end
