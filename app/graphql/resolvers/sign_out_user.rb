class Resolvers::SignOutUser < GraphQL::Function
  # defines inline return type for the mutation
  type do
    name 'SignoutPayload'

    field :token, types.String
  end

  def call(_obj, _args, ctx)
    token = nil

    ctx[:session][:token] = token

    OpenStruct.new({
      token: token
    })
  end
end
