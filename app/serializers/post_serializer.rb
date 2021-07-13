class PostSerializer
  include JSONAPI::Serializer
  attributes(
    :address,
    :completed,
    :date,
    :description,
    :title
  )

  has_one :user
end
