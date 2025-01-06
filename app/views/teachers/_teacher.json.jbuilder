json.extract! teacher, :id, :first_name, :last_name, :email, :phone, :created_at, :updated_at
json.url teacher_url(teacher, format: :json)
