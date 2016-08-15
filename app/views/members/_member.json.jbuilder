json.extract! member, :id, :first_name, :last_name, :job_title, :company, :email, :priority, :created_at, :updated_at
json.url member_url(member, format: :json)