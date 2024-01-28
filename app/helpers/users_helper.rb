module UsersHelper
 def same_user?(current_user, user)
      current_user.id == user.id
    
  end
end
