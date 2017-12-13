class UsersController < ApplicationController
  
    def downgrade_account
        current_user.standard!
        current_user.wikis.update_all(private: false)
        redirect_to edit_user_registration_path
    end
    
end
