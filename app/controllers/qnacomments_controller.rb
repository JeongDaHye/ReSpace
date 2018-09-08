class QnacommentsController < ApplicationController
  before_action :authenticate_user!
    
  def create
    @new_qnacomment = Qnacomment.new(set_qnacomment_params)
    @new_qnacomment.user_id = current_user.id
    @new_qnacomment.qna_id = params[:qna_id]
    respond_to do |format|
      if @new_qnacomment.save
        @qna = @new_qnacomment.qna
        format.js
      else
        format.html{ redirect_to :back, notice: "Error" }
      end
    end
  end
    
  def destroy
    @qnacomment = Qnacomment.find_by(id: params[:id])
    @qnacomment.destroy
    respond_to do |format|
      format.js
    end
  end
    
  private
    def set_qnacomment_params
      params.require(:qnacomment).permit(:qnacomment)
    end
end
