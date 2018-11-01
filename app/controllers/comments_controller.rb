class CommentsController < ApplicationController

    def create
        puts user.id
        @user= User.find(current_user)
        @gossip = Gossip.find(params[:gossip_id])
        @comment=@user.gossip.comments.create(user_id: current_user.id, content: params[:comment][:content], )
        redirect_to user_gossip_path(@user)
    end

    def destroy
        @gossip = Gossip.find(params[:gossip_id])
        @comment = @gossip.comments.find(params[:id])
        @comment.destroy
        redirect_to user_gossip_path(@user)
    end

end
