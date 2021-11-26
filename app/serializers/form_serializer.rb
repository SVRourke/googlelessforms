class FormSerializer
  include JSONAPI::Serializer
  attributes :title, :created_at
  
  attribute :submission_count do |object|
    object.submissions.count
  end
end
