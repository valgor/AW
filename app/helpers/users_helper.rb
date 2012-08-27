module UsersHelper

	#Get Display Name For User
  def display_name(user)
  	if user.nil?
  		"Guest"
  	else
  		user.username.empty? ? user.email : user.username
  	end 
  end
	
	 def current_user_for_interaction
     current_user.nil? ? User.find_by_email('doguestfly77@guestor.com') : curent_user
  end
  
end
