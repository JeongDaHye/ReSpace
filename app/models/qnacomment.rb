class Qnacomment < ActiveRecord::Base
  belongs_to :user
  belongs_to :qna
end
