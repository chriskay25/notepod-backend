class AuthSerializer
  include JSONAPI::Serializer
  set_type :user
  set_key_transform :camel_lower
  has_many :notes
  attributes :username

  attribute :user_jwt do |object, params|
    params[:jwt]
  end
end
