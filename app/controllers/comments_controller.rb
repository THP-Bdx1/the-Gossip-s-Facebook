class CommentsController < ApplicationController

    def create
        @gossip = Gossip.find(params[:gossip_id])
        @comment=@gossip.comments.create(params[:comment].permit(:content, :anonymous_commentor))
        redirect_to gossip_path(@gossip)
    end

    def destroy
        @gossip = Gossip.find(params[:gossip_id])
        @comment = @gossip.comments.find(params[:id])
        @comment.destroy
        redirect_to gossip_path(@gossip)
    end

end
