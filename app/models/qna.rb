class Qna < ActiveRecord::Base
  belongs_to :user
  has_many :qnacomments
end
