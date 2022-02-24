module Types
  class MutationType < Types::BaseObject
    # TODO: remove me
    # field :test_field, String, null: false,
    #   description: "An example field added by the generator"
    # def test_field
    #   "Hello World"
    # end

    # field :create_author, Types::AuthorType, null: true, description: "Create an author" do
    #   argument :first_name, String,  required: false
    #   argument :last_name,  String,  required: false
    #   argument :birth_year, Int,     required: false
    #   argument :is_alive,   Boolean, required: false
    # end
    # def create_author(first_name:, last_name:, birth_year:, is_alive:)
    #   Author.create(first_name: first_name, last_name: last_name,
    #                 birth_year: birth_year, is_alive: is_alive)
    # end

    field :create_author, Types::AuthorType, mutation: Mutations::CreateAuthor, null: true, description: "Create an author"
  end
end
