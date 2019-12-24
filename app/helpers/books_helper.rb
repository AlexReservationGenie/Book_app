module BooksHelper
  def current_user_is_admin?
    if current_user
      current_user.admin?
    else
      false
    end
  end
end
