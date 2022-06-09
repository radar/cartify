class Types::ErrorsType < Types::BaseObject
  field :errors, [Types::ErrorType]
  field :full_messages, [String]
end
