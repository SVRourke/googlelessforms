class AnswerSerializer
  include JSONAPI::Serializer
  attributes :name, :value 
  # belongs_to :submission
end
