class Mutations::CreateAuthorMutation < GraphQL::Schema::Mutation
  # null allow_null: false

  # argument :first_name, String,  required: false
  # argument :last_name,  String,  required: false
  # argument :birth_year, Int,     required: false
  # argument :is_alive,   Boolean, required: false

  argument :author, Types::AuthorInputType, required: true

  # def resolve(first_name:, last_name:, birth_year:, is_alive:)
  #   Author.create(first_name: first_name, last_name: last_name, birth_year: birth_year, is_alive: is_alive)
  def resolve(author: nil)
    Author.create author.to_h
  end
end
