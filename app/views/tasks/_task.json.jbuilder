json.extract! task, :id, :content, :user_id, :completed, :category, :priority, :created_at, :updated_at
json.url task_url(task, format: :json)
