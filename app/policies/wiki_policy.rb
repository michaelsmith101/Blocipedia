class WikiPolicy < ApplicationPolicy
   
   class Scope
       attr_reader :user, :scope
       
       def initialize(user, scope)
          @user = user
          @scope = scope
       end
       
       def resolve
           wikis = []
           if user.role == 'admin'
               wikis = scope.all
           elsif user.role = 'premium'
   
    
end