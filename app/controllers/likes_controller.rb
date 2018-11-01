    class LikesController < ApplicationController

        def create
          @user = current_user.id
          @gossip = params[:gossip_id]
          likes = {user_id: @user, gossip_id: @gossip}
          @like = Like.new(likes)
      
          @like.save!
          if @like.save
            redirect_to user_path(@user)
          else
           redirect_to gossip_path
          end
        end
        def destroy
            @gossip = Gossip.find(params[:gossip_id])
            @like = @gossip.likes.find(params[:id])
            @like.destroy
            redirect_to gossip_path(@gossip)
        end
      
      
      end
end
