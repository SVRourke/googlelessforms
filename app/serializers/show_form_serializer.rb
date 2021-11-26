class ShowFormSerializer
    include JSONAPI::Serializer
    attributes :title, :created_at
    has_many :submissions
    # has_many :inputs
  end
  