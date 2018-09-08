class CommentsController < ApplicationController
  before_action :authenticate_user!
    
  def create
    @new_comment = Comment.new(set_comment_params)
    @new_comment.user_id = current_user.id
    @new_comment.post_id = params[:post_id]
    respond_to do |format|
      if @new_comment.save
        @post = @new_comment.post
        format.js
      else
        format.html{ redirect_to :back, notice: "Error" }
      end
    end
  end
    
  def destroy
    @comment = Comment.find_by(id: params[:id])
    @comment.destroy
    respond_to do |format|
      format.js
    end
  end
    
  private
    def set_comment_params
      params.require(:comment).permit(:comment)
    end
end
