class CommentofcommentsController < ApplicationController
    def create
        @gossip = Gossip.find(params[:gossip_id])
        @comment = Comment.find(params[:comment_id])
        @commentofcomment=@comment.comments.create(params[:comment].permit(:content, :commentor))
        redirect_to gossip_path(@gossip)
    end

    def destroy
        @gossip = Gossip.find(params[:gossip_id])
        @comment = Comment.find(params[:comment_id])
        @commentofcomment = @comment.comments.find(params[:id])
        @commentofcomment.destroy
        redirect_to gossip_path(@gossip)
    end
end
