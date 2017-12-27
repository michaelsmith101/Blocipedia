class WikiCollaborationsController < ApplicationController
    
    def create

        @wiki = Wiki.find(params[:wiki_id])
        @user = User.find_by(email: params[:email])


        @wiki_collaboration = @wiki.wiki_collaborations.new(wiki_id: @wiki.id, user_id: @user.id)
    
        if @wiki_collaboration.save
          flash[:notice] = "Wiki collaborator added"
          redirect_to edit_wiki_path(@wiki)
        else
          flash.new[:alert] = "There was an error"
          render :edit
        end

    end
    
    def destroy
        @wiki = Wiki.find(params[:wiki_id])
        @wiki_collaboration = WikiCollaboration.find(params[:id])

        if @wiki_collaboration.destroy
          flash[:notice] = "Wiki collaborator removed"
          redirect_to edit_wiki_path(@wiki)
        else
          flash.new[:alert] = "There was an error"
          render :edit
        end
    end


end
