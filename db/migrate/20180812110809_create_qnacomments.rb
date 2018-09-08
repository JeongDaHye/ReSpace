class CreateQnacomments < ActiveRecord::Migration
  def change
    create_table :qnacomments do |t|
      t.references :user, index: true, foreign_key: true
      t.references :qna, index: true, foreign_key: true
      t.text :qnacomment

      t.timestamps null: false
    end
  end
end
