json.extract! appointment, :id, :user_id, :serviceable_id, :serviceable_type, :start_time, :end_time, :status, :notes, :created_at, :updated_at
json.url appointment_url(appointment, format: :json)
