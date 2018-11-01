    class LikesController < ApplicationController

    def create
        @gossip = Gossip.find(params[:gossip_id])
        @like=@gossip.likes.create(params[:like])
        redirect_to gossip_path(@gossip)
    end

    def destroy
        @gossip = Gossip.find(params[:gossip_id])
        @like = @gossip.likes.find(params[:id])
        @like.destroy
        redirect_to gossip_path(@gossip)
    end
    
end
