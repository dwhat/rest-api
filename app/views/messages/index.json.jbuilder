json.array!(@messages) do |message|
  json.extract! message, :id, :user_id, :user_id, :dateTime, :msg_head, :msg_body, :checksum, :read
  json.url message_url(message, format: :json)
end
