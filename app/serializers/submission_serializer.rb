class SubmissionSerializer
  include JSONAPI::Serializer
  attributes :created_at
  # has_many :answers

  attribute :answers do |sub|
    AnswerSerializer.new(sub.answers).as_json["data"]
  end
  # belongs_to :form 
end
