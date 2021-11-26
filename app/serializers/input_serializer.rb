class InputSerializer
  include JSONAPI::Serializer
  attributes :inputType, :label, :name, :required 
end
