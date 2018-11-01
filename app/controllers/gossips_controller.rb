class GossipsController < ApplicationController

  def index
  @gossips=Gossip.all
  @user= User.find(params[:user_id])
  end

  def show
    @gossip=Gossip.find(params[:id])
    @user= User.find(params[:user_id]) 
    @comment = Comment.new
  end

  def update
    @gossip=Gossip.find(params[:id])
    @gossip.update(gossip_params)
    redirect_to "/users/#{current_user.id}/gossips/"
  end

  def destroy
    @gossip=Gossip.find(params[:id])
    @user = @gossip.user
    @gossip.destroy
    redirect_to "/users/#{current_user.id}/gossips/"
  end

  def new
    @gossip = Gossip.new
  end

  def edit
    @gossip=Gossip.find(params[:id])
  end

  def create
    @gossip = Gossip.create(user_id: current_user.id, content: params[:gossip][:content], title: params[:gossip][:title])
    redirect_to "/users/#{current_user.id}/gossips/"
  end

  private
  def gossip_params
    params.require(:gossip).permit(:title, :content)
    end

end
