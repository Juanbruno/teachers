json.extract! teacher, :id, :user_id, name:, :type, :status, :phone, :created_at, :updated_at
json.url teacher_url(teacher, format: :json)
