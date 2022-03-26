class UserSerializer
  include JSONAPI::Serializer
  has_many :notes
  attributes :username
end
