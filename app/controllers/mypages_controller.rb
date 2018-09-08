class MypagesController < ApplicationController
    def index
        @posts = Post.where(user_id:current_user)
        @qnas = Qna.where(user_id:current_user)
        @reviews = Review.where(user_id:current_user)
    end
end
