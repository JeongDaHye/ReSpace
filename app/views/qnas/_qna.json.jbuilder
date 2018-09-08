json.extract! qna, :id, :title, :content, :user_id, :created_at, :updated_at
json.url qna_url(qna, format: :json)
